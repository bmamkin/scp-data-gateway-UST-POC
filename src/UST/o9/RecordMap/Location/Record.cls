/// THIS IS GENERATED CODE. DO NOT EDIT.<br/>
/// RECORDMAP: Generated from RecordMap 'UST.o9.RecordMap.Location'
/// on 2024-03-22 at 19:49:05.841 [2024-03-22 19:49:05.841 UTC]
/// by user bmamkin
Class UST.o9.RecordMap.Location.Record Extends (%Persistent, %XML.Adaptor, Ens.Request, EnsLib.RecordMap.Base) [ Inheritance = right, ProcedureBlock ]
{

Parameter INCLUDETOPFIELDS = 1;

/// Location ID
Property LocationID As %String(MAXLEN = 40);

/// Location Description
Property LocationDescription As %String(MAXLEN = 128);

/// Location Type
Property LocationType As %String(MAXLEN = 10);

Property Street As %String(MAXLEN = 128);

Property City As %String(MAXLEN = 25);

Property StateProvince As %String(MAXLEN = 3);

/// Location New Attribute for Country
Property Country As %String(MAXLEN = 3);

Property PostalCode As %String(MAXLEN = 10);

/// Location Region
Property LocationRegion As %String(MAXLEN = 10);

Parameter RECORDMAPGENERATED = 1;

Relationship %ParentBatch As UST.o9.RecordMap.LocationBatch [ Cardinality = one, Inverse = Records ];

Index %ParentBatchIdx On %ParentBatch;

Storage Default
{
<Data name="RecordDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>LocationID</Value>
</Value>
<Value name="3">
<Value>%Source</Value>
</Value>
<Value name="4">
<Value>LocationType</Value>
</Value>
<Value name="5">
<Value>Street</Value>
</Value>
<Value name="6">
<Value>City</Value>
</Value>
<Value name="7">
<Value>StateProvince</Value>
</Value>
<Value name="8">
<Value>Country</Value>
</Value>
<Value name="9">
<Value>PostalCode</Value>
</Value>
<Value name="10">
<Value>LocationRegion</Value>
</Value>
<Value name="11">
<Value>%ParentBatch</Value>
</Value>
<Value name="12">
<Value>LocationDescription</Value>
</Value>
</Data>
<DataLocation>^UST.o9.RecordMap.Lo76C8.RecordD</DataLocation>
<DefaultData>RecordDefaultData</DefaultData>
<ExtentSize>2000000</ExtentSize>
<IdLocation>^UST.o9.RecordMap.Lo76C8.RecordD</IdLocation>
<IndexLocation>^UST.o9.RecordMap.Lo76C8.RecordI</IndexLocation>
<StreamLocation>^UST.o9.RecordMap.Lo76C8.RecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
