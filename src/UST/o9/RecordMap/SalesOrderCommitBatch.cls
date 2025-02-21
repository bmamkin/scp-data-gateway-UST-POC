/// RECORDMAP: Modified during compilation of RecordMap 'UST.o9.RecordMap.SalesOrderCommit'
/// on 2024-03-25 at 20:06:11.757 [2024-03-25 20:06:11.757 UTC]
/// by user bmamkin
Class UST.o9.RecordMap.SalesOrderCommitBatch Extends (%Library.Persistent, EnsLib.RecordMap.SimpleBatch)
{

Parameter XMLNAME = "UST_o9_RecordMap_SalesOrderCommitBatch";

Parameter RECORDMAPGENERATED = 1;

Parameter BatchHeader = "SO unique ID,SalesOrderHeaderID,SalesOrderLineID,SalesOrderLineCommitID,SalesOrderClass,Item,Location,ShipTo,Status,CreationDate,LastChangedDate,SOCommitQuantity,SODeliveredQuantity,SOCommitShipDate,SOCommitActualShipDate,SOCommitActualDeliveryDate,SalesDocumentType,Component,PurchasingDocumentNumber,ItemPurchasingOPurchasingDocument,IndependentOrDependent,SoldTo,Division,HIghLevelItemInBOM,SalesOrganization,DistributionChannel,QuoteNumber,OpportunityID,DeliveryGroup,DeliveryPriority,NetValue,Currency,SORequestQuantity,SourceSystem";

Parameter HeaderTerm = "\x0d\x0a";

Parameter BatchTrailer;

Parameter TrailerTerm;

Parameter IgnoreLeadingData = 0;

Relationship Records As UST.o9.RecordMap.SalesOrderCommit.Record [ Cardinality = many, Inverse = %ParentBatch ];

Trigger OnDelete [ Event = DELETE ]
{
	Set %ok = ..deleteRecords({ID})
}

Parameter XMLTYPE = "UST_o9_RecordMap_SalesOrderCommitBatch";

Storage Default
{
<Data name="SalesOrderCommitBatchDefaultData">
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
<DataLocation>^UST.o9.RecCA13.SalesOrderC4BF8D</DataLocation>
<DefaultData>SalesOrderCommitBatchDefaultData</DefaultData>
<IdLocation>^UST.o9.RecCA13.SalesOrderC4BF8D</IdLocation>
<IndexLocation>^UST.o9.RecCA13.SalesOrderC4BF8I</IndexLocation>
<StreamLocation>^UST.o9.RecCA13.SalesOrderC4BF8S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
