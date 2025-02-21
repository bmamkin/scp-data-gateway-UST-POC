/// RECORDMAP: Modified during compilation of RecordMap 'UST.o9.RecordMap.SalesOrderHeader'
/// on 2024-03-08 at 02:07:42.940 [2024-03-08 02:07:42.940 UTC]
/// by user bmamkin
Class UST.o9.RecordMap.SalesOrderHeaderBatch Extends (%Library.Persistent, EnsLib.RecordMap.SimpleBatch)
{

Parameter XMLNAME = "UST_o9_RecordMap_SalesOrderHeaderBatch";

Parameter RECORDMAPGENERATED = 1;

Parameter BatchHeader = "SalesOrderHeaderID,SalesOrderDocumentType,SoldTo,OverallStatus,CreationDate,LastChangeDate,QuoteNumber,OpportunityID,SORequestedDate,NetValue,Currency,SourceSystem,sourceOrderId";

Parameter HeaderTerm = "\x0d\x0a";

Parameter BatchTrailer;

Parameter TrailerTerm;

Parameter IgnoreLeadingData = 0;

Relationship Records As UST.o9.RecordMap.SalesOrderHeader.Record [ Cardinality = many, Inverse = %ParentBatch ];

Trigger OnDelete [ Event = DELETE ]
{
	Set %ok = ..deleteRecords({ID})
}

Parameter XMLTYPE = "UST_o9_RecordMap_SalesOrderHeaderBatch";

Storage Default
{
<Data name="SalesOrderHeaderBatchDefaultData">
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
<DataLocation>^UST.o9.RecCA13.SalesOrderH43A4D</DataLocation>
<DefaultData>SalesOrderHeaderBatchDefaultData</DefaultData>
<IdLocation>^UST.o9.RecCA13.SalesOrderH43A4D</IdLocation>
<IndexLocation>^UST.o9.RecCA13.SalesOrderH43A4I</IndexLocation>
<StreamLocation>^UST.o9.RecCA13.SalesOrderH43A4S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
