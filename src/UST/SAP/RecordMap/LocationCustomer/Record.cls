/// THIS IS GENERATED CODE. DO NOT EDIT.<br/>
/// RECORDMAP: Generated from RecordMap 'UST.SAP.RecordMap.LocationCustomer'
/// on 2024-04-02 at 14:36:21.420 [2024-04-02 14:36:21.420 UTC]
/// by user bmamkin
Class UST.SAP.RecordMap.LocationCustomer.Record Extends (%Persistent, %XML.Adaptor, Ens.Request, EnsLib.RecordMap.Base) [ Inheritance = right, ProcedureBlock ]
{

Parameter INCLUDETOPFIELDS = 1;

/// KNA1.KUNNR
Property Customer As %String(MAXLEN = 40);

/// KNA1.Name1
Property Name As %String(MAXLEN = 128);

/// KNA1.STRAS
Property Street As %String(MAXLEN = 128);

/// KNA1.ORT01
Property City As %String(MAXLEN = 25);

/// KNA1.REGIO
Property Region As %String(MAXLEN = 3);

/// KNA1.LAND1
Property Country As %String(MAXLEN = 3);

/// KNA1.PSTLZ
Property PostalCode As %String(MAXLEN = 10);

Parameter RECORDMAPGENERATED = 1;

Relationship %ParentBatch As UST.SAP.RecordMap.LocationCustomerBatch [ Cardinality = one, Inverse = Records ];

Index %ParentBatchIdx On %ParentBatch;

Storage Default
{
<Data name="RecordDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Customer</Value>
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
<DataLocation>^UST.SAP.RecordMap.LB319.RecordD</DataLocation>
<DefaultData>RecordDefaultData</DefaultData>
<ExtentSize>2000000</ExtentSize>
<IdLocation>^UST.SAP.RecordMap.LB319.RecordD</IdLocation>
<IndexLocation>^UST.SAP.RecordMap.LB319.RecordI</IndexLocation>
<StreamLocation>^UST.SAP.RecordMap.LB319.RecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
