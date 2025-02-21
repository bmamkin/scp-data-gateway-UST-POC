/// 
Class UST.BPL.LocationBPL Extends Ens.BusinessProcessBPL
{

Storage Default
{
<Type>%Storage.Persistent</Type>
}

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='Ens.Request' response='Ens.Response' height='2000' width='2000' >
<context>
<property name='cdmLocation' type='SC.Data.Location' instantiate='0' />
<property name='o9Location' type='UST.o9.RecordMap.Location.Record' instantiate='0' />
<property name='k' type='%Integer' instantiate='0' />
<property name='o9LocationBatch' type='UST.o9.RecordMap.LocationBatch' instantiate='1' />
<property name='status' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='50' />
</parameters>
</property>
</context>
<sequence xend='200' yend='1050' >
<switch name='Location Type' xpos='200' ypos='250' xend='200' yend='950' >
<case condition='$FIND(request.%Source,"location_customer")' name='Customer' >
<if name='Full Load' condition='$FIND(request.%Source,"_full_")' xpos='335' ypos='400' xend='335' yend='850' >
<true>
<sql name='Purge Extent for Full Load' xpos='605' ypos='550' >
<![CDATA[delete from SC_Data.Location where type='Customer']]>
</sql>
<foreach name='Customer Location Full Load' property='request.Records' key='context.k' xpos='605' ypos='650' xend='200' yend='650' >
<transform name='SAP Customer Location to CDM' class='UST.DTL.SAPCustomerLocationToCDMLocation' source='request.Records.GetAt(context.k)' target='context.cdmLocation' xpos='200' ypos='250' />
<transform name='CDM Location to o9' class='UST.DTL.CDMLocationToO9Location' source='context.cdmLocation' target='context.o9Location' xpos='200' ypos='350' />
<assign name="Set Batch Relationship" property="context.o9Location.%ParentBatch" value="context.o9LocationBatch" action="set" xpos='200' ypos='450' />
<assign name="Save CDM Location Object" property="context.status" value="context.cdmLocation.%Save()" action="set" xpos='200' ypos='550' />
</foreach>
<call name='Initiate Batch Rollover' target='ToO9LocationCSV' async='1' xpos='605' ypos='750' >
<request type='UST.o9.RecordMap.LocationBatch' >
<assign property="callrequest" value="context.o9LocationBatch" action="set" />
<assign property="callrequest.%Source" value="&quot;md_location_s4_&quot;_$PIECE(request.%Source,&quot;_&quot;,6,8)" action="set" />
</request>
<response type='Ens.Response' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</true>
<false>
<foreach name='Customer Location Delta Load' property='request.Records' key='context.k' xpos='335' ypos='550' xend='200' yend='550' >
<transform name='SAP Location to o9' class='UST.DTL.SAPCustomerLocationToO9CustomerLocation' source='request.Records.GetAt(context.k)' target='context.o9Location' xpos='200' ypos='250' />
<sql name='Update Location in CDM' xpos='200' ypos='350' >
<![CDATA[INSERT OR UPDATE SC_Data.Location (uid,name,type,street,city,stateProvince,country,postalCode,region) VALUES (:context.o9Location.LocationID,:context.o9Location.LocationDescription,:context.o9Location.LocationType,:context.o9Location.Street,:context.o9Location.City,:context.o9Location.StateProvince,:context.o9Location.Country,:context.o9Location.PostalCode,:context.o9Location.LocationRegion)]]>
</sql>
<assign name="Set Batch Relationship" property="context.o9Location.%ParentBatch" value="context.o9LocationBatch" action="set" xpos='200' ypos='450' />
</foreach>
<call name='Initiate Batch Rollover' target='ToO9LocationCSV' async='1' xpos='335' ypos='650' >
<request type='UST.o9.RecordMap.LocationBatch' >
<assign property="callrequest" value="context.o9LocationBatch" action="set" />
<assign property="callrequest.%Source" value="&quot;md_location_s4_&quot;_$PIECE(request.%Source,&quot;_&quot;,6,8)" action="set" />
</request>
<response type='Ens.Response' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</false>
</if>
</case>
<case condition='$FIND(request.%Source,"location_plant")' name='Plant' >
<if name='Full Load' condition='$FIND(request.%Source,"_full_")' xpos='875' ypos='400' xend='875' yend='850' >
<true>
<sql name='Purge Extent for Full Load' xpos='1145' ypos='550' >
<![CDATA[delete from SC_Data.Location where type='Plant']]>
</sql>
<foreach name='Plant Location Full Load' property='request.Records' key='context.k' xpos='1145' ypos='650' xend='200' yend='650' >
<transform name='SAP Plant Location to CDM' class='UST.DTL.SAPPlantLocationToCDMLocation' source='request.Records.GetAt(context.k)' target='context.cdmLocation' xpos='200' ypos='250' />
<transform name='CDM Location to o9' class='UST.DTL.CDMLocationToO9Location' source='context.cdmLocation' target='context.o9Location' xpos='200' ypos='350' />
<assign name="Set Batch Relationship" property="context.o9Location.%ParentBatch" value="context.o9LocationBatch" action="set" xpos='200' ypos='450' />
<assign name="Save CDM Location Object" property="context.status" value="context.cdmLocation.%Save()" action="set" xpos='200' ypos='550' />
</foreach>
<call name='Initiate Batch Rollover' target='ToO9LocationCSV' async='1' xpos='1145' ypos='750' >
<request type='UST.o9.RecordMap.LocationBatch' >
<assign property="callrequest" value="context.o9LocationBatch" action="set" />
<assign property="callrequest.%Source" value="&quot;md_location_s4_&quot;_$PIECE(request.%Source,&quot;_&quot;,6,8)" action="set" />
<assign property="callrequest.BatchHeader" value="&quot;&quot;" action="set" />
</request>
<response type='Ens.Response' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</true>
<false>
<trace name='Discard and Trace' value='"Plant Location batch name does not contain &lt;full&gt; qualifier"' xpos='875' ypos='550' />
</false>
</if>
</case>
<default/>
</switch>
</sequence>
</process>
}

}
