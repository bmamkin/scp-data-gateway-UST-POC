Class UST.DTL.SAPSalesShipmentLineToCDMSalesShipmentLine Extends Ens.DataTransformDTL [ DependsOn = (UST.SAP.RecordMap.SalesShipmentLine.Record, SC.Data.SalesShipmentLine) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='UST.SAP.RecordMap.SalesShipmentLine.Record' targetClass='SC.Data.SalesShipmentLine' create='new' language='objectscript' >
<assign value='source.SalesOrderID_"-"_..Pad(source.LineNumber,-6,"0")_"-"_..Pad(source.SalesOrderLineNumber,-4,"0")' property='target.uid' action='set' />
<assign value='$PIECE($PIECE(source.%Source,"_",7),".",1)' property='target.salesShipmentId' action='set' />
<assign value='source.LineNumber' property='target.lineNumber' action='set' />
<assign value='source.SalesOrderItemCategory' property='target.salesOrderItemCategory' action='set' />
<assign value='source.ProductID' property='target.productId' action='set' />
<assign value='source.HighLevelItemInBOM' property='target.highLevelItemInBOM' action='set' />
<assign value='source.ItemPurchasingDocument' property='target.itemPurchasingDocument' action='set' />
<assign value='source.DeliveryGroup' property='target.deliveryGroup' action='set' />
<assign value='source.Value' property='target.value' action='set' />
<assign value='source.ValueCurrency' property='target.valueCurrency' action='set' />
<assign value='source.Quantity' property='target.quantity' action='set' />
<assign value='source.DeliveryPriority' property='target.deliveryPriority' action='set' />
<assign value='source.ShipToLocationID' property='target.shipToLocationId' action='set' />
<assign value='source.OrderPlacedDate' property='target.orderPlacedDate' action='set' />
<assign value='source.ChangeOrderDate' property='target.changeOrderDate' action='set' />
<assign value='source.Status' property='target.status' action='set' />
<assign value='source.IndependentOrDependent' property='target.independentOrDependent' action='set' />
<assign value='source.Component' property='target.component' action='set' />
<assign value='source.QuantityShipped' property='target.quantityShipped' action='set' />
<assign value='source.RequestedShipDate' property='target.requestedShipDate' action='set' />
<assign value='source.SalesOrderLineNumber' property='target.salesOrderLineNumber' action='set' />
<assign value='source.RequestedDeliveryDate' property='target.requestedDeliveryDate' action='set' />
<assign value='source.OrderCommitQuantity' property='target.orderCommitQuantity' action='set' />
<assign value='source.OrderActualDeliveryDate' property='target.orderActualDeliveryDate' action='set' />
<assign value='source.OrderDocumentType' property='target.orderDocumentType' action='set' />
<assign value='source.SalesOrganization' property='target.salesOrganization' action='set' />
<assign value='source.SalesDistributionChannel' property='target.salesDistributionChannel' action='set' />
<assign value='source.SalesRegion' property='target.salesRegion' action='set' />
<assign value='source.CustomerPONumber' property='target.customerPONumber' action='set' />
<assign value='source.CustomerID' property='target.customerId' action='set' />
<assign value='source.QuoteNumber' property='target.orderQuoteNumber' action='set' />
<assign value='source.OpportunityID' property='target.opportunityId' action='set' />
<assign value='source.ShipTo' property='target.shipTo' action='set' />
<assign value='"S4"' property='target.sourceSystem' action='set' />
<assign value='source.SalesOrderID' property='target.salesOrderId' action='set' />
</transform>
}

}
