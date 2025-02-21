Class UST.DTL.SAPSalesOrderToO9SalesOrderHeader Extends Ens.DataTransformDTL [ DependsOn = (UST.SAP.RecordMap.SalesOrder.Record, UST.o9.RecordMap.SalesOrderHeader.Record) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='UST.SAP.RecordMap.SalesOrder.Record' targetClass='UST.o9.RecordMap.SalesOrderHeader.Record' create='new' language='objectscript' >
<assign value='source.UniqueID' property='target.SalesOrderHeaderID' action='set' />
<assign value='source.OrderDocumentType' property='target.SalesOrderDocumentType' action='set' />
<assign value='source.CustomerID' property='target.SoldTo' action='set' />
<assign value='source.OrderStatus' property='target.OverallStatus' action='set' />
<assign value='source.OrderPlacedDate' property='target.CreationDate' action='set' />
<assign value='source.ChangedOrderDate' property='target.LastChangeDate' action='set' />
<assign value='source.QuteNumber' property='target.Quote' action='set' />
<assign value='source.OpportunityID' property='target.OpportunityID' action='set' />
<assign value='source.RequestedDeliveryDate' property='target.RequestedDate' action='set' />
<assign value='source.OrderValue' property='target.NetValue' action='set' />
<assign value='source.OrderCurrency' property='target.Currency' action='set' />
<assign value='"S4"' property='target.SourceSystem' action='set' />
<assign value='"S4"' property='target.SourceOrderID' action='set' />
</transform>
}

}
