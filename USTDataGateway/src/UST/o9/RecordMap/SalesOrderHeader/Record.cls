/// THIS IS GENERATED CODE. DO NOT EDIT.<br/>
/// RECORDMAP: Generated from RecordMap 'UST.o9.RecordMap.SalesOrderHeader'
/// on 2024-03-08 at 02:07:42.931 [2024-03-08 02:07:42.931 UTC]
/// by user bmamkin
Class UST.o9.RecordMap.SalesOrderHeader.Record Extends (%Persistent, %XML.Adaptor, Ens.Request, EnsLib.RecordMap.Base) [ Inheritance = right, ProcedureBlock ]
{

Parameter INCLUDETOPFIELDS = 1;

Property SalesOrderHeaderID As %String(MAXLEN = 10);

Property SalesOrderDocumentType As %String(MAXLEN = 8);

Property SoldTo As %String(MAXLEN = 10);

Property OverallStatus As %String(MAXLEN = 3);

Property CreationDate As %String;

Property LastChangeDate As %String;

Property Quote As %String(MAXLEN = 20);

Property OpportunityID As %String(MAXLEN = 15);

Property RequestedDate As %String;

Property NetValue As %Decimal(SCALE = 2);

Property Currency As %String(MAXLEN = 5);

Property SourceSystem As %String(MAXLEN = 15);

Property SourceOrderID As %String(MAXLEN = 15);

Parameter RECORDMAPGENERATED = 1;

Relationship %ParentBatch As UST.o9.RecordMap.SalesOrderHeaderBatch [ Cardinality = one, Inverse = Records ];

Index %ParentBatchIdx On %ParentBatch;

Storage Default
{
<Data name="RecordDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>SalesOrderHeaderID</Value>
</Value>
<Value name="3">
<Value>%Source</Value>
</Value>
<Value name="4">
<Value>SoldTo</Value>
</Value>
<Value name="5">
<Value>OverallStatus</Value>
</Value>
<Value name="6">
<Value>CreationDate</Value>
</Value>
<Value name="7">
<Value>LastChangeDate</Value>
</Value>
<Value name="8">
<Value>Quote</Value>
</Value>
<Value name="9">
<Value>OpportunityID</Value>
</Value>
<Value name="10">
<Value>RequestedDate</Value>
</Value>
<Value name="11">
<Value>NetValue</Value>
</Value>
<Value name="12">
<Value>Currency</Value>
</Value>
<Value name="13">
<Value>SourceSystem</Value>
</Value>
<Value name="14">
<Value>SourceOrderID</Value>
</Value>
<Value name="15">
<Value>%ParentBatch</Value>
</Value>
<Value name="16">
<Value>SalesOrderDocumentType</Value>
</Value>
</Data>
<DataLocation>^UST.o9.RecordMap.SalC51.RecordD</DataLocation>
<DefaultData>RecordDefaultData</DefaultData>
<ExtentSize>2000000</ExtentSize>
<IdLocation>^UST.o9.RecordMap.SalC51.RecordD</IdLocation>
<IndexLocation>^UST.o9.RecordMap.SalC51.RecordI</IndexLocation>
<StreamLocation>^UST.o9.RecordMap.SalC51.RecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
