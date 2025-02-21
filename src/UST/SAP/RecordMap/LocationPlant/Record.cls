/// THIS IS GENERATED CODE. DO NOT EDIT.<br/>
/// RECORDMAP: Generated from RecordMap 'UST.SAP.RecordMap.LocationPlant'
/// on 2024-03-22 at 19:02:33.356 [2024-03-22 19:02:33.356 UTC]
/// by user bmamkin
Class UST.SAP.RecordMap.LocationPlant.Record Extends (%Persistent, %XML.Adaptor, Ens.Request, EnsLib.RecordMap.Base) [ Inheritance = right, ProcedureBlock ]
{

Parameter INCLUDETOPFIELDS = 1;

/// T001W.WERKS
Property Plant As %String(MAXLEN = 40);

/// T001W.Name1
Property Name As %String(MAXLEN = 128);

/// T001W.STRAS
Property Street As %String(MAXLEN = 128);

/// T001W.ORT01
Property City As %String(MAXLEN = 25);

/// T001W.REGIO
Property Region As %String(MAXLEN = 3);

/// T001W.LAND1
Property Country As %String(MAXLEN = 3);

/// T001W.PSTLZ
Property PostalCode As %String(MAXLEN = 10);

Parameter RECORDMAPGENERATED = 1;

Relationship %ParentBatch As UST.SAP.RecordMap.LocationPlantBatch [ Cardinality = one, Inverse = Records ];

Index %ParentBatchIdx On %ParentBatch;

Storage Default
{
<Data name="RecordDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Plant</Value>
</Value>
<Value name="3">
<Value>%Source</Value>
</Value>
<Value name="4">
<Value>Street</Value>
</Value>
<Value name="5">
<Value>City</Value>
</Value>
<Value name="6">
<Value>Region</Value>
</Value>
<Value name="7">
<Value>Country</Value>
</Value>
<Value name="8">
<Value>PostalCode</Value>
</Value>
<Value name="9">
<Value>%ParentBatch</Value>
</Value>
<Value name="10">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^UST.SAP.RecordMap.LoAE7.RecordD</DataLocation>
<DefaultData>RecordDefaultData</DefaultData>
<ExtentSize>2000000</ExtentSize>
<IdLocation>^UST.SAP.RecordMap.LoAE7.RecordD</IdLocation>
<IndexLocation>^UST.SAP.RecordMap.LoAE7.RecordI</IndexLocation>
<StreamLocation>^UST.SAP.RecordMap.LoAE7.RecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
