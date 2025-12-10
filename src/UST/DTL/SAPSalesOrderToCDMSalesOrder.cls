Class UST.DTL.SAPSalesOrderToCDMSalesOrder Extends Ens.DataTransformDTL [ DependsOn = (UST.SAP.RecordMap.SalesOrder.Record, SC.Data.SalesOrder) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='UST.SAP.RecordMap.SalesOrder.Record' targetClass='SC.Data.SalesOrder' create='new' language='objectscript' >
<assign value='source.UniqueID' property='target.uid' action='set' />
<assign value='source.OrderStatus' property='target.orderStatus' action='set' />
<assign value='source.CustomerID' property='target.customerId' action='set' />
<assign value='source.RequestedDeliveryDate' property='target.requestedDeliveryDate' action='set' />
<assign value='source.OrderPlacedDate' property='target.orderPlacedDate' action='set' />
<assign value='source.ChangedOrderDate' property='target.changeOrderDate' action='set' />
<assign value='source.OrderValue' property='target.orderValue' action='set' />
<assign value='source.OrderCurrency' property='target.orderCurrency' action='set' />
<assign value='"S4"' property='target.dataSource' action='set' />
<assign value='"S4"' property='target.sourceOrderId' action='set' />
<assign value='source.OrderDocumentType' property='target.orderDocumentType' action='set' />
<assign value='source.QuteNumber' property='target.quoteNumber' action='set' />
<assign value='source.OpportunityID' property='target.opportunityId' action='set' />
</transform>
}

}
