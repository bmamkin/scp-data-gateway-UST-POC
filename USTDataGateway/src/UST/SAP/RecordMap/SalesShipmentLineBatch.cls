/// RECORDMAP: Modified during compilation of RecordMap 'UST.SAP.RecordMap.SalesShipmentLine'
/// on 2024-03-25 at 20:04:20.133 [2024-03-25 20:04:20.133 UTC]
/// by user bmamkin
Class UST.SAP.RecordMap.SalesShipmentLineBatch Extends (%Library.Persistent, EnsLib.RecordMap.SimpleBatch)
{

Parameter XMLNAME = "UST_SAP_RecordMap_SalesShipmentLineBatch";

Parameter RECORDMAPGENERATED = 1;

Parameter BatchHeader = "salesOrderId,lineNumber,salesOrderItemCategory,productId,highLevelItemInBOM,itemPurchasingDocument,deliveryGroup,value,valueCurrency,quantity,deliveryPriority,shipToLocationId,orderPlacedDate,changeOrderDate,status,IndependentOrDependent,component,quantityShipped,requestedShipDate,salesOrderLineNumber,requestedDeliveryDate,orderCommitQuantity,orderActualDeliveryDate,orderDocumentType,salesOrganization,salesDistributionChannel,salesRegion,customerPONumber,customerId,quoteNumber,opportunityID,ShipTo,SourceSystem";

Parameter HeaderTerm = "\x0d\x0a";

Parameter BatchTrailer;

Parameter TrailerTerm;

Parameter IgnoreLeadingData = 1;

Relationship Records As UST.SAP.RecordMap.SalesShipmentLine.Record [ Cardinality = many, Inverse = %ParentBatch ];

Trigger OnDelete [ Event = DELETE ]
{
	Set %ok = ..deleteRecords({ID})
}

Parameter XMLTYPE = "UST_SAP_RecordMap_SalesShipmentLineBatch";

Storage Default
{
<Data name="SalesShipmentLineBatchDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>%Source</Value>
</Value>
<Value name="3">
<Value>BatchHeader</Value>
</Value>
<Value name="4">
<Value>BatchTrailer</Value>
</Value>
</Data>
<DataLocation>^UST.SAP.Re1897.SalesShipmeC7F8D</DataLocation>
<DefaultData>SalesShipmentLineBatchDefaultData</DefaultData>
<ExtentSize>3</ExtentSize>
<IdLocation>^UST.SAP.Re1897.SalesShipmeC7F8D</IdLocation>
<IndexLocation>^UST.SAP.Re1897.SalesShipmeC7F8I</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="%Source">
<AverageFieldSize>28.67</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="BatchHeader">
<AverageFieldSize>521</AverageFieldSize>
<OutlierSelectivity>.999999:"salesOrderId,lineNumber,salesOrderItemCategory,productId,highLevelItemInBOM,itemPurchasingDocument,deliveryGroup,value,valueCurrency,quantity,deliveryPriority,shipToLocationId,orderPlacedDate,changeOrderDate,status,IndependentOrDependent,component,quantityShipped,requestedShipDate,salesOrderLineNumber,requestedDeliveryDate,orderCommitQuantity,orderActualDeliveryDate,orderDocumentType,salesOrganization,salesDistributionChannel,salesRegion,customerPONumber,customerId,quoteNumber,opportunityID,ShipTo,SourceSystem"_$c(13,10)</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="BatchTrailer">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^UST.SAP.Re1897.SalesShipmeC7F8S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
