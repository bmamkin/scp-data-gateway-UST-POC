/// RECORDMAP: Modified during compilation of RecordMap 'UST.o9.RecordMap.SalesOrderRequest'
/// on 2024-03-25 at 19:51:04.632 [2024-03-25 19:51:04.632 UTC]
/// by user bmamkin
Class UST.o9.RecordMap.SalesOrderRequestBatch Extends (%Library.Persistent, EnsLib.RecordMap.SimpleBatch)
{

Parameter XMLNAME = "UST_o9_RecordMap_SalesOrderRequestBatch";

Parameter RECORDMAPGENERATED = 1;

Parameter BatchHeader = "ui Unique ID,SalesOrderHeaderID,SalesOrderLineID,SalesOrderClass,Item,Location,ShipTo,Status,CreationDate,LastChangedDate,SORequestQuantity,SODeliveredQuantity,SOActualShipDate,SORequestedDate,SOActualDeliveryDate,Component,PurchasingDocumentNumber,ItemPurchasingOPurchasingDocument,IndependentOrDependent,HIghLevelItemInBOM,SalesOrganization,DistributionChannel,Division,QuoteNumber,OpportunityID,DeliveryGroup,DeliveryPriority,NetValue,Currency,SourceSystem";

Parameter HeaderTerm = "\x0d\x0a";

Parameter BatchTrailer;

Parameter TrailerTerm;

Parameter IgnoreLeadingData = 0;

Relationship Records As UST.o9.RecordMap.SalesOrderRequest.Record [ Cardinality = many, Inverse = %ParentBatch ];

Trigger OnDelete [ Event = DELETE ]
{
	Set %ok = ..deleteRecords({ID})
}

Parameter XMLTYPE = "UST_o9_RecordMap_SalesOrderRequestBatch";

Storage Default
{
<Data name="SalesOrderRequestBatchDefaultData">
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
<DataLocation>^UST.o9.RecCA13.SalesOrderRDE38D</DataLocation>
<DefaultData>SalesOrderRequestBatchDefaultData</DefaultData>
<IdLocation>^UST.o9.RecCA13.SalesOrderRDE38D</IdLocation>
<IndexLocation>^UST.o9.RecCA13.SalesOrderRDE38I</IndexLocation>
<StreamLocation>^UST.o9.RecCA13.SalesOrderRDE38S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
