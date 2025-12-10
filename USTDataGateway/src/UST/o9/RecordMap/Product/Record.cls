/// THIS IS GENERATED CODE. DO NOT EDIT.<br/>
/// RECORDMAP: Generated from RecordMap 'UST.o9.RecordMap.Product'
/// on 2024-03-22 at 20:16:52.055 [2024-03-22 20:16:52.055 UTC]
/// by user bmamkin
Class UST.o9.RecordMap.Product.Record Extends (%Persistent, %XML.Adaptor, Ens.Request, EnsLib.RecordMap.Base) [ Inheritance = right, ProcedureBlock ]
{

Parameter INCLUDETOPFIELDS = 1;

Property UID As %String(MAXLEN = 40);

Property Item As %String(MAXLEN = 40);

Property ItemType As %String(MAXLEN = 4);

Property MaterialGroup As %String(MAXLEN = 9);

Property ItemDescription As %String(MAXLEN = 40);

Property BaseUOM As %String(MAXLEN = 3);

Property PlanningItem As %String(MAXLEN = 48);

Property Division As %String(MAXLEN = 2);

Property ExternalMaterialGroup As %String(MAXLEN = 18);

Property SizeDimensions As %String(MAXLEN = 32);

Property TransportationGroup As %String(MAXLEN = 4);

Property HierarchyAttribute As %String(MAXLEN = 18);

Property ItemIntroDate As %String;

Property ItemDiscDate As %String;

Property MaterialCategory As %String(MAXLEN = 2);

Property CreationDate As %String;

Property CreatedBy As %String(MAXLEN = 12);

Property ChangeDate As %String;

Property ChangedBy As %String(MAXLEN = 12);

Property Brand As %String(MAXLEN = 4);

Property PlanningAttribute1 As %String(MAXLEN = 10);

Property PlanningAttribute1Value As %String(MAXLEN = 70);

Property PlanningAttribute2 As %String(MAXLEN = 10);

Property PlanningAttribute2Value As %String(MAXLEN = 70);

Property PlanningAttribute3 As %String(MAXLEN = 10);

Property PlanningAttribute3Value As %String(MAXLEN = 70);

Parameter RECORDMAPGENERATED = 1;

Relationship %ParentBatch As UST.o9.RecordMap.ProductBatch [ Cardinality = one, Inverse = Records ];

Index %ParentBatchIdx On %ParentBatch;

Storage Default
{
<Data name="RecordDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>UID</Value>
</Value>
<Value name="3">
<Value>%Source</Value>
</Value>
<Value name="4">
<Value>ItemType</Value>
</Value>
<Value name="5">
<Value>MaterialGroup</Value>
</Value>
<Value name="6">
<Value>ItemDescription</Value>
</Value>
<Value name="7">
<Value>BaseUOM</Value>
</Value>
<Value name="8">
<Value>PlanningItem</Value>
</Value>
<Value name="9">
<Value>Division</Value>
</Value>
<Value name="10">
<Value>ExternalMaterialGroup</Value>
</Value>
<Value name="11">
<Value>SizeDimensions</Value>
</Value>
<Value name="12">
<Value>TransportationGroup</Value>
</Value>
<Value name="13">
<Value>HierarchyAttribute</Value>
</Value>
<Value name="14">
<Value>ItemIntroDate</Value>
</Value>
<Value name="15">
<Value>ItemDiscDate</Value>
</Value>
<Value name="16">
<Value>MaterialCategory</Value>
</Value>
<Value name="17">
<Value>CreationDate</Value>
</Value>
<Value name="18">
<Value>CreatedBy</Value>
</Value>
<Value name="19">
<Value>ChangeDate</Value>
</Value>
<Value name="20">
<Value>ChangedBy</Value>
</Value>
<Value name="21">
<Value>Brand</Value>
</Value>
<Value name="22">
<Value>PlanningAttribute1</Value>
</Value>
<Value name="23">
<Value>PlanningAttribute1Value</Value>
</Value>
<Value name="24">
<Value>PlanningAttribute2</Value>
</Value>
<Value name="25">
<Value>PlanningAttribute2Value</Value>
</Value>
<Value name="26">
<Value>PlanningAttribute3</Value>
</Value>
<Value name="27">
<Value>PlanningAttribute3Value</Value>
</Value>
<Value name="28">
<Value>%ParentBatch</Value>
</Value>
<Value name="29">
<Value>Item</Value>
</Value>
</Data>
<DataLocation>^UST.o9.RecordMap.Pr6200.RecordD</DataLocation>
<DefaultData>RecordDefaultData</DefaultData>
<ExtentSize>2000000</ExtentSize>
<IdLocation>^UST.o9.RecordMap.Pr6200.RecordD</IdLocation>
<IndexLocation>^UST.o9.RecordMap.Pr6200.RecordI</IndexLocation>
<StreamLocation>^UST.o9.RecordMap.Pr6200.RecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
