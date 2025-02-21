/// RECORDMAP: Modified during compilation of RecordMap 'UST.SAP.RecordMap.LocationCustomer'
/// on 2024-04-02 at 14:36:21.425 [2024-04-02 14:36:21.425 UTC]
/// by user bmamkin
Class UST.SAP.RecordMap.LocationCustomerBatch Extends (%Library.Persistent, EnsLib.RecordMap.SimpleBatch)
{

Parameter XMLNAME = "UST_SAP_RecordMap_LocationCustomerBatch";

Parameter RECORDMAPGENERATED = 1;

Parameter BatchHeader = "Customer,Name1,Street and House number,City,Region,Country,Postal Code";

Parameter HeaderTerm = "\x0d\x0a";

Parameter BatchTrailer;

Parameter TrailerTerm;

Parameter IgnoreLeadingData = 1;

Relationship Records As UST.SAP.RecordMap.LocationCustomer.Record [ Cardinality = many, Inverse = %ParentBatch ];

Trigger OnDelete [ Event = DELETE ]
{
	Set %ok = ..deleteRecords({ID})
}

Parameter XMLTYPE = "UST_SAP_RecordMap_LocationCustomerBatch";

Storage Default
{
<Data name="LocationCustomerBatchDefaultData">
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
<DataLocation>^UST.SAP.Re1897.LocationCus7D4CD</DataLocation>
<DefaultData>LocationCustomerBatchDefaultData</DefaultData>
<IdLocation>^UST.SAP.Re1897.LocationCus7D4CD</IdLocation>
<IndexLocation>^UST.SAP.Re1897.LocationCus7D4CI</IndexLocation>
<StreamLocation>^UST.SAP.Re1897.LocationCus7D4CS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
