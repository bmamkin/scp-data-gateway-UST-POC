Class UST.DTL.CDMSalesOrderToO9SalesOrderHeader Extends Ens.DataTransformDTL [ DependsOn = (SC.Data.SalesOrder, UST.o9.RecordMap.SalesOrderHeader.Record) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='SC.Data.SalesOrder' targetClass='UST.o9.RecordMap.SalesOrderHeader.Record' create='new' language='objectscript' >
<assign value='source.uid' property='target.SalesOrderHeaderID' action='set' />
<assign value='source.orderDocumentType' property='target.SalesOrderDocumentType' action='set' />
<assign value='source.customerId' property='target.SoldTo' action='set' />
<assign value='source.orderStatus' property='target.OverallStatus' action='set' />
<assign value='source.orderPlacedDate' property='target.CreationDate' action='set' />
<assign value='source.changeOrderDate' property='target.LastChangeDate' action='set' />
<assign value='source.quoteNumber' property='target.Quote' action='set' />
<assign value='source.opportunityId' property='target.OpportunityID' action='set' />
<assign value='source.requestedDeliveryDate' property='target.RequestedDate' action='set' />
<assign value='source.orderValue' property='target.NetValue' action='set' />
<assign value='source.orderCurrency' property='target.Currency' action='set' />
<assign value='source.dataSource' property='target.SourceSystem' action='set' />
<assign value='source.sourceOrderId' property='target.SourceOrderID' action='set' />
</transform>
}

}
