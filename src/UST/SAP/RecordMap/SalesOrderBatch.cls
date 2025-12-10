/// RECORDMAP: Modified during compilation of RecordMap 'UST.SAP.RecordMap.SalesOrder'
/// on 2024-03-22 at 21:26:47.954 [2024-03-22 21:26:47.954 UTC]
/// by user bmamkin
Class UST.SAP.RecordMap.SalesOrderBatch Extends (%Library.Persistent, EnsLib.RecordMap.SimpleBatch)
{

Parameter XMLNAME = "UST_SAP_RecordMap_SalesOrderBatch";

Parameter RECORDMAPGENERATED = 1;

Parameter BatchHeader = "uid,orderStatus,customerId,requestedDeliveryDate,orderPlacedDate,changeOrderDate,orderValue,orderCurrency,dataSource,sourceOrderId,orderDocumentType,Quote,OpportunityID";

Parameter HeaderTerm = "\x0d\x0a";

Parameter BatchTrailer;

Parameter TrailerTerm;

Parameter IgnoreLeadingData = 1;

Relationship Records As UST.SAP.RecordMap.SalesOrder.Record [ Cardinality = many, Inverse = %ParentBatch ];

Trigger OnDelete [ Event = DELETE ]
{
	Set %ok = ..deleteRecords({ID})
}

Parameter XMLTYPE = "UST_SAP_RecordMap_SalesOrderBatch";

Storage Default
{
<Data name="SalesOrderBatchDefaultData">
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
<DataLocation>^UST.SAP.Re1897.SalesOrderB47B2D</DataLocation>
<DefaultData>SalesOrderBatchDefaultData</DefaultData>
<IdLocation>^UST.SAP.Re1897.SalesOrderB47B2D</IdLocation>
<IndexLocation>^UST.SAP.Re1897.SalesOrderB47B2I</IndexLocation>
<StreamLocation>^UST.SAP.Re1897.SalesOrderB47B2S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
