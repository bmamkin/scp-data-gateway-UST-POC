Class UST.DTL.SAPSalesShipmentLineToO9SalesOrderCommit Extends Ens.DataTransformDTL [ DependsOn = (UST.SAP.RecordMap.SalesShipmentLine.Record, UST.o9.RecordMap.SalesOrderCommit.Record) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='UST.SAP.RecordMap.SalesShipmentLine.Record' targetClass='UST.o9.RecordMap.SalesOrderCommit.Record' create='new' language='objectscript' >
<assign value='source.SalesOrderID_"-"_..Pad(source.LineNumber,-6,"0")_"-"_..Pad(source.SalesOrderLineNumber,-4,"0")' property='target.UniqueID' action='set' />
<assign value='source.SalesOrderID' property='target.SalesOrderHeaderID' action='set' />
<assign value='source.LineNumber' property='target.SalesOrderLineID' action='set' />
<assign value='source.SalesOrderLineNumber' property='target.SalesOrderLineCommitID' action='set' />
<assign value='source.SalesOrderItemCategory' property='target.SalesOrderClass' action='set' />
<assign value='source.ProductID' property='target.Item' action='set' />
<assign value='source.ShipToLocationID' property='target.Location' action='set' />
<assign value='source.ShipTo' property='target.ShipTo' action='set' />
<assign value='source.Status' property='target.Status' action='set' />
<assign value='source.OrderPlacedDate' property='target.CreationDate' action='set' />
<assign value='source.ChangeOrderDate' property='target.LastChangedDate' action='set' />
<assign value='source.OrderCommitQuantity' property='target.SOCommitQuantity' action='set' />
<assign value='source.QuantityShipped' property='target.SODeliveredQuantity' action='set' />
<assign value='source.RequestedShipDate' property='target.SOCommitShipDate' action='set' />
<assign value='source.RequestedDeliveryDate' property='target.SOCommitActualShipDate' action='set' />
<assign value='source.OrderActualDeliveryDate' property='target.SOCommitActualDeliveryDate' action='set' />
<assign value='source.OrderDocumentType' property='target.SalesDocumentType' action='set' />
<assign value='source.Component' property='target.Component' action='set' />
<assign value='source.CustomerPONumber' property='target.PurchasingDocumentNumber' action='set' />
<assign value='source.ItemPurchasingDocument' property='target.ItemPurchasingDocumentNumber' action='set' />
<assign value='source.IndependentOrDependent' property='target.IndependentOrDependent' action='set' />
<assign value='source.CustomerID' property='target.SoldTo' action='set' />
<assign value='source.SalesRegion' property='target.Division' action='set' />
<assign value='source.HighLevelItemInBOM' property='target.HIghLevelItemInBOM' action='set' />
<assign value='source.SalesOrganization' property='target.SalesOrganization' action='set' />
<assign value='source.SalesDistributionChannel' property='target.DistributionChannel' action='set' />
<assign value='source.QuoteNumber' property='target.QuoteNumber' action='set' />
<assign value='source.OpportunityID' property='target.OpportunityID' action='set' />
<assign value='source.DeliveryGroup' property='target.DeliveryGroup' action='set' />
<assign value='source.DeliveryPriority' property='target.DeliveryPriority' action='set' />
<assign value='source.Value' property='target.NetValue' action='set' />
<assign value='source.ValueCurrency' property='target.Currency' action='set' />
<assign value='source.Quantity' property='target.SORequestQuantity' action='set' />
<assign value='"S4"' property='target.SourceSystem' action='set' />
</transform>
}

}
