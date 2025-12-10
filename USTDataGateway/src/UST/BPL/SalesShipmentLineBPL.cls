/// 
Class UST.BPL.SalesShipmentLineBPL Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='Ens.Request' response='Ens.Response' height='2000' width='2000' >
<context>
<property name='cdmSalesShipmentLine' type='SC.Data.SalesShipmentLine' instantiate='0' />
<property name='o9SalesOrderCommit' type='UST.o9.RecordMap.SalesOrderCommit.Record' instantiate='0' />
<property name='o9SalesOrderCommitBatch' type='UST.o9.RecordMap.SalesOrderCommitBatch' instantiate='1' />
<property name='f' type='%Integer' instantiate='0' />
<property name='status' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='50' />
</parameters>
</property>
<property name='run' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='50' />
</parameters>
</property>
</context>
<sequence xend='200' yend='1100' >
<if name='Full Load' condition='$FIND(request.%Source,"_full_")' xpos='200' ypos='250' xend='200' yend='1000' >
<true>
<sql name='Purge Extent for Full Load' xpos='470' ypos='400' >
<annotation><![CDATA[Sales Shipment Line]]></annotation>
<![CDATA[DELETE FROM SC_Data.SalesShipmentLine]]>
</sql>
<sql name='Purge Extent for Full Load' xpos='470' ypos='500' >
<annotation><![CDATA[Sales Shipment]]></annotation>
<![CDATA[DELETE FROM SC_Data.SalesShipment]]>
</sql>
<assign name="Capture Run ID" property="context.run" value="$PIECE($PIECE(request.%Source,&quot;_&quot;,7),&quot;.&quot;,1)" action="set" xpos='470' ypos='600' >
<annotation><![CDATA[Run id from file name]]></annotation>
</assign>
<sql name='Create CDM Sales Shipment' xpos='470' ypos='700' >
<annotation><![CDATA[Required due to referential
integrity constraint]]></annotation>
<![CDATA[INSERT SC_Data.SalesShipment (uid) values(:context.run)]]>
</sql>
<foreach name='Sales Shipment Line Full Load' property='request.Records' key='context.f' xpos='470' ypos='800' xend='200' yend='650' >
<transform name='SAP Sales Shipment Line to o9' class='UST.DTL.SAPSalesShipmentLineToCDMSalesShipmentLine' source='request.Records.GetAt(context.f)' target='context.cdmSalesShipmentLine' xpos='200' ypos='250' />
<transform name='CDM Sales Shipment Line to o9' class='UST.DTL.CDMSalesShipmentLineToO9SalesOrderCommit' source='context.cdmSalesShipmentLine' target='context.o9SalesOrderCommit' xpos='200' ypos='350' />
<assign name="Set Batch Relationship" property="context.o9SalesOrderCommit.%ParentBatch" value="context.o9SalesOrderCommitBatch" action="set" xpos='200' ypos='450' />
<assign name="Save CDM Sales Shipment Line Object" property="context.status" value="context.cdmSalesShipmentLine.%Save()" action="set" xpos='200' ypos='550' />
</foreach>
<call name='Initiate Batch Rollover' target='ToO9SalesOrderCommitCSV' async='1' xpos='470' ypos='900' >
<request type='UST.o9.RecordMap.SalesOrderCommitBatch' >
<assign property="callrequest" value="context.o9SalesOrderCommitBatch" action="set" />
<assign property="callrequest.%Source" value="&quot;td_salesorderscommitdetails_s4_&quot;_$PIECE(request.%Source,&quot;_&quot;,5,7)" action="set" />
</request>
<response type='Ens.Response' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</true>
<false>
<foreach name='Sales Shipment Line Delta Load' property='request.Records' key='context.f' xpos='200' ypos='400' xend='200' yend='450' >
<transform name='SAP Sales Shipment Line to o9' class='UST.DTL.SAPSalesShipmentLineToO9SalesOrderCommit' source='request.Records.GetAt(context.f)' target='context.o9SalesOrderCommit' xpos='200' ypos='250' />
<assign name="Set Batch Relationship" property="context.o9SalesOrderCommit.%ParentBatch" value="context.o9SalesOrderCommitBatch" action="set" xpos='200' ypos='350' />
</foreach>
<call name='Initiate Batch Rollover' target='ToO9SalesOrderCommitCSV' async='1' xpos='200' ypos='500' >
<request type='UST.o9.RecordMap.SalesOrderCommitBatch' >
<assign property="callrequest" value="context.o9SalesOrderCommitBatch" action="set" />
<assign property="callrequest.%Source" value="&quot;td_salesorderscommitdetails_s4_&quot;_$PIECE(request.%Source,&quot;_&quot;,5,7)" action="set" />
</request>
<response type='Ens.Response' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</false>
</if>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
