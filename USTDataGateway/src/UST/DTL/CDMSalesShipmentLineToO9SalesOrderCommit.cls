Class UST.DTL.CDMSalesShipmentLineToO9SalesOrderCommit Extends Ens.DataTransformDTL [ DependsOn = (SC.Data.SalesShipmentLine, UST.o9.RecordMap.SalesOrderCommit.Record) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='SC.Data.SalesShipmentLine' targetClass='UST.o9.RecordMap.SalesOrderCommit.Record' create='new' language='objectscript' >
<assign value='source.uid' property='target.UniqueID' action='set' />
<assign value='source.salesOrderId' property='target.SalesOrderHeaderID' action='set' />
<assign value='source.lineNumber' property='target.SalesOrderLineID' action='set' />
<assign value='source.salesOrderLineNumber' property='target.SalesOrderLineCommitID' action='set' />
<assign value='source.salesOrderItemCategory' property='target.SalesOrderClass' action='set' />
<assign value='source.productId' property='target.Item' action='set' />
<assign value='source.highLevelItemInBOM' property='target.HIghLevelItemInBOM' action='set' />
<assign value='source.shipToLocationId' property='target.Location' action='set' />
<assign value='source.shipTo' property='target.ShipTo' action='set' />
<assign value='source.status' property='target.Status' action='set' />
<assign value='source.orderPlacedDate' property='target.CreationDate' action='set' />
<assign value='source.changeOrderDate' property='target.LastChangedDate' action='set' />
<assign value='source.orderCommitQuantity' property='target.SOCommitQuantity' action='set' />
<assign value='source.quantityShipped' property='target.SODeliveredQuantity' action='set' />
<assign value='source.requestedShipDate' property='target.SOCommitShipDate' action='set' />
<assign value='source.requestedDeliveryDate' property='target.SOCommitActualShipDate' action='set' />
<assign value='source.orderActualDeliveryDate' property='target.SOCommitActualDeliveryDate' action='set' />
<assign value='source.orderDocumentType' property='target.SalesDocumentType' action='set' />
<assign value='source.component' property='target.Component' action='set' />
<assign value='source.customerPONumber' property='target.PurchasingDocumentNumber' action='set' />
<assign value='source.itemPurchasingDocument' property='target.ItemPurchasingDocumentNumber' action='set' />
<assign value='source.independentOrDependent' property='target.IndependentOrDependent' action='set' />
<assign value='source.customerId' property='target.SoldTo' action='set' />
<assign value='source.salesRegion' property='target.Division' action='set' />
<assign value='source.salesOrganization' property='target.SalesOrganization' action='set' />
<assign value='source.salesDistributionChannel' property='target.DistributionChannel' action='set' />
<assign value='source.orderQuoteNumber' property='target.QuoteNumber' action='set' />
<assign value='source.opportunityId' property='target.OpportunityID' action='set' />
<assign value='source.deliveryGroup' property='target.DeliveryGroup' action='set' />
<assign value='source.deliveryPriority' property='target.DeliveryPriority' action='set' />
<assign value='source.value' property='target.NetValue' action='set' />
<assign value='source.valueCurrency' property='target.Currency' action='set' />
<assign value='source.quantity' property='target.SORequestQuantity' action='set' />
<assign value='source.sourceSystem' property='target.SourceSystem' action='set' />
</transform>
}

}
