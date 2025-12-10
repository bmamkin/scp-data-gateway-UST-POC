/// 
Class UST.BPL.SalesOrderLineBPL Extends Ens.BusinessProcessBPL
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
<property name='cdmSalesOrderLine' type='SC.Data.SalesOrderLine' instantiate='0' />
<property name='o9SalesOrderRequest' type='UST.o9.RecordMap.SalesOrderRequest.Record' instantiate='0' />
<property name='o9SalesOrderRequestBatch' type='UST.o9.RecordMap.SalesOrderRequestBatch' instantiate='1' />
<property name='g' type='%Integer' instantiate='0' />
<property name='status' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='50' />
</parameters>
</property>
</context>
<sequence xend='200' yend='800' >
<if name='Full Load' condition='$FIND(request.%Source,"_full_")' xpos='200' ypos='250' xend='200' yend='700' >
<true>
<sql name='Purge Extent for Full Load' xpos='470' ypos='400' >
<![CDATA[DELETE FROM SC_Data.SalesOrderLine]]>
</sql>
<foreach name='Sales Order Line Full Load' property='request.Records' key='context.g' xpos='470' ypos='500' xend='200' yend='650' >
<transform name='SAP Sales Order Line to CDM' class='UST.DTL.SAPSalesOrderLineToCDMSalesOrderLine' source='request.Records.GetAt(context.g)' target='context.cdmSalesOrderLine' xpos='200' ypos='250' />
<transform name='CDM Sales Oder Line to o9' class='UST.DTL.CDMSalesOrderLineToO9SalesOrderRequest' source='context.cdmSalesOrderLine' target='context.o9SalesOrderRequest' xpos='200' ypos='350' />
<assign name="Set Batch Relationship" property="context.o9SalesOrderRequest.%ParentBatch" value="context.o9SalesOrderRequestBatch" action="set" xpos='200' ypos='450' />
<assign name="Save CDM Sales Order Line Object" property="context.status" value="context.cdmSalesOrderLine.%Save()" action="set" xpos='200' ypos='550' />
</foreach>
<call name='Initiate Batch Rollover' target='ToO9SalesOrderRequestCSV' async='1' xpos='470' ypos='600' >
<request type='UST.o9.RecordMap.SalesOrderRequestBatch' >
<assign property="callrequest" value="context.o9SalesOrderRequestBatch" action="set" />
<assign property="callrequest.%Source" value="&quot;td_salesordersrequestdetails_s4_&quot;_$PIECE(request.%Source,&quot;_&quot;,5,7)" action="set" />
</request>
<response type='Ens.Response' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</true>
<false>
<foreach name='Sales Order Line Delta Load' property='request.Records' key='context.g' xpos='200' ypos='400' xend='200' yend='450' >
<transform name='SAP Sales Order Line to o9' class='UST.DTL.SAPSalesOrderLineToO9SalesOrderRequest' source='request.Records.GetAt(context.g)' target='context.o9SalesOrderRequest' xpos='200' ypos='250' />
<assign name="Set Batch Relationship" property="context.o9SalesOrderRequest.%ParentBatch" value="context.o9SalesOrderRequestBatch" action="set" xpos='200' ypos='350' />
</foreach>
<call name='Initiate Batch Rollover' target='ToO9SalesOrderRequestCSV' async='1' xpos='200' ypos='500' >
<request type='UST.o9.RecordMap.SalesOrderRequestBatch' >
<assign property="callrequest" value="context.o9SalesOrderRequestBatch" action="set" />
<assign property="callrequest.%Source" value="&quot;td_salesordersrequestdetails_s4_&quot;_$PIECE(request.%Source,&quot;_&quot;,5,7)" action="set" />
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

}
