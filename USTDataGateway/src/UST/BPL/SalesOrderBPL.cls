/// 
Class UST.BPL.SalesOrderBPL Extends Ens.BusinessProcessBPL
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
<property name='cdmSalesOrder' type='SC.Data.SalesOrder' instantiate='0' />
<property name='o9SalesOrder' type='UST.o9.RecordMap.SalesOrderHeader.Record' instantiate='0' />
<property name='o9SalesOrderBatch' type='UST.o9.RecordMap.SalesOrderHeaderBatch' instantiate='1' />
<property name='j' type='%Integer' instantiate='0' />
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
<![CDATA[DELETE FROM SC_Data.SalesOrder]]>
</sql>
<foreach name='Sales Order Full Load' property='request.Records' key='context.j' xpos='470' ypos='500' xend='200' yend='650' >
<transform name='SAP Sales Order to CDM' class='UST.DTL.SAPSalesOrderToCDMSalesOrder' source='request.Records.GetAt(context.j)' target='context.cdmSalesOrder' xpos='200' ypos='250' />
<transform name='CDM Sales Order to o9' class='UST.DTL.CDMSalesOrderToO9SalesOrderHeader' source='context.cdmSalesOrder' target='context.o9SalesOrder' xpos='200' ypos='350' />
<assign name="Set Batch Relationship" property="context.o9SalesOrder.%ParentBatch" value="context.o9SalesOrderBatch" action="set" xpos='200' ypos='450' />
<assign name="Save CDM Sales Order Object" property="context.status" value="context.cdmSalesOrder.%Save()" action="set" xpos='200' ypos='550' />
</foreach>
<call name='Initiate Batch Rollover' target='ToO9SalesOrderHeaderCSV' async='1' xpos='470' ypos='600' >
<request type='UST.o9.RecordMap.SalesOrderHeaderBatch' >
<assign property="callrequest" value="context.o9SalesOrderBatch" action="set" />
<assign property="callrequest.%Source" value="&quot;td_salesordersheaderdetails_s4_&quot;_$PIECE(request.%Source,&quot;_&quot;,5,7)" action="set" />
</request>
<response type='Ens.Response' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</true>
<false>
<foreach name='Sales Order Delta Load' property='request.Records' key='context.j' xpos='200' ypos='400' xend='200' yend='550' >
<transform name='SAP Sales Order to o9' class='UST.DTL.SAPSalesOrderToO9SalesOrderHeader' source='request.Records.GetAt(context.j)' target='context.o9SalesOrder' xpos='200' ypos='250' />
<sql name='Update Sales Order in CDM' xpos='200' ypos='350' >
<![CDATA[INSERT OR UPDATE SC_DATA.SalesOrder (uid,orderDocumentType,customerId,orderStatus,orderPlacedDate,changeOrderDate,quoteNumber,opportunityId,requestedDeliveryDate,orderValue,orderCurrency,dataSource,sourceOrderId)
Values
(:context.o9SalesOrder.SalesOrderHeaderID,:context.o9SalesOrder.SalesOrderDocumentType,:context.o9SalesOrder.SoldTo,:context.o9SalesOrder.OverallStatus,:context.o9SalesOrder.CreationDate,:context.o9SalesOrder.LastChangeDate,:context.o9SalesOrder.Quote,:context.o9SalesOrder.OpportunityID,:context.o9SalesOrder.RequestedDate,:context.o9SalesOrder.NetValue,:context.o9SalesOrder.Currency,:context.o9SalesOrder.SourceSystem,:context.o9SalesOrder.SourceOrderID)]]>
</sql>
<assign name="Set Batch Relationship" property="context.o9SalesOrder.%ParentBatch" value="context.o9SalesOrderBatch" action="set" xpos='200' ypos='450' />
</foreach>
<call name='Initiate Batch Rollover' target='ToO9SalesOrderHeaderCSV' async='1' xpos='200' ypos='500' >
<request type='UST.o9.RecordMap.SalesOrderHeaderBatch' >
<assign property="callrequest" value="context.o9SalesOrderBatch" action="set" />
<assign property="callrequest.%Source" value="&quot;td_salesordersheaderdetails_s4_&quot;_$PIECE(request.%Source,&quot;_&quot;,5,7)" action="set" />
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
