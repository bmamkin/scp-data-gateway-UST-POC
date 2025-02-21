/// THIS IS GENERATED CODE. DO NOT EDIT.<br/>
/// RECORDMAP: Generated from RecordMap 'UST.SAP.RecordMap.Product'
/// on 2024-03-28 at 17:31:02.767 [2024-03-28 17:31:02.767 UTC]
/// by user bmamkin
Class UST.SAP.RecordMap.Product.Record Extends (%Persistent, %XML.Adaptor, Ens.Request, EnsLib.RecordMap.Base) [ Inheritance = right, ProcedureBlock ]
{

Parameter INCLUDETOPFIELDS = 1;

/// MARA.MATNR
Property ProductNumber As %String(MAXLEN = 40);

/// MARA.MTART
Property MaterialType As %String(MAXLEN = 4);

/// MARA.MATKL
Property MaterialGroup As %String(MAXLEN = 9);

/// MARA.MATKX
Property MaterialDescription As %String(MAXLEN = 40);

/// MARA.MAINS
Property DefaultUnitOfMeasure As %String(MAXLEN = 3);

/// MARA.WRKST
Property BasicMaterial As %String(MAXLEN = 48);

/// MARA.SPART
Property Division As %String(MAXLEN = 2);

/// MARA.EXTWG
Property ExternalMaterialGroup As %String(MAXLEN = 18);

/// MARA.GROES
Property Size As %String(MAXLEN = 32);

/// MARA.TRAGR
Property TransportationGroup As %String(MAXLEN = 4);

/// MARA.PRDHA
Property ProductHierarchy As %String(MAXLEN = 18);

/// MARA.DATAB
Property ValidFromDate As %String;

/// MARA.LIQDT
Property DeletionDate As %String;

/// MARA.ATTYP
Property MaterialCategory As %String(MAXLEN = 2);

/// MARA.ERSDA
Property DateOfCreation As %String;

/// MARA.ERNAM
Property NameOfPersonWhoCreatedMaterial As %String(MAXLEN = 12);

/// MARA.LAEDA
Property DateOfLastChange As %String;

/// MARA.AENAM
Property NameOfPersonWhoChangedMaterial As %String(MAXLEN = 12);

/// MARA.BRAND_ID
Property Brand As %String(MAXLEN = 4);

/// AUSP
Property InternalCharacteristic1 As %String(MAXLEN = 128);

/// AUSP
Property CharacteristicValue1 As %String(MAXLEN = 128);

/// AUSP
Property InternalCharacteristic2 As %String(MAXLEN = 128);

/// AUSP
Property CharacteristicValue2 As %String(MAXLEN = 128);

/// AUSP
Property InternalCharacteristic3 As %String(MAXLEN = 128);

/// AUSP
Property CharacteristicValue3 As %String(MAXLEN = 128);

Parameter RECORDMAPGENERATED = 1;

Relationship %ParentBatch As UST.SAP.RecordMap.ProductBatch [ Cardinality = one, Inverse = Records ];

Index %ParentBatchIdx On %ParentBatch;

Storage Default
{
<Data name="RecordDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ProductNumber</Value>
</Value>
<Value name="3">
<Value>%Source</Value>
</Value>
<Value name="4">
<Value>MaterialGroup</Value>
</Value>
<Value name="5">
<Value>MaterialDescription</Value>
</Value>
<Value name="6">
<Value>DefaultUnitOfMeasure</Value>
</Value>
<Value name="7">
<Value>BasicMaterial</Value>
</Value>
<Value name="8">
<Value>Division</Value>
</Value>
<Value name="9">
<Value>ExternalMaterialGroup</Value>
</Value>
<Value name="10">
<Value>Size</Value>
</Value>
<Value name="11">
<Value>TransportationGroup</Value>
</Value>
<Value name="12">
<Value>ProductHierarchy</Value>
</Value>
<Value name="13">
<Value>ValidFromDate</Value>
</Value>
<Value name="14">
<Value>DeletionDate</Value>
</Value>
<Value name="15">
<Value>MaterialCategory</Value>
</Value>
<Value name="16">
<Value>DateOfCreation</Value>
</Value>
<Value name="17">
<Value>NameOfPersonWhoCreatedMaterial</Value>
</Value>
<Value name="18">
<Value>DateOfLastChange</Value>
</Value>
<Value name="19">
<Value>NameOfPersonWhoChangedMaterial</Value>
</Value>
<Value name="20">
<Value>Brand</Value>
</Value>
<Value name="21">
<Value>InternalCharacteristic1</Value>
</Value>
<Value name="22">
<Value>CharacteristicValue1</Value>
</Value>
<Value name="23">
<Value>InternalCharacteristic2</Value>
</Value>
<Value name="24">
<Value>CharacteristicValue2</Value>
</Value>
<Value name="25">
<Value>InternalCharacteristic3</Value>
</Value>
<Value name="26">
<Value>CharacteristicValue3</Value>
</Value>
<Value name="27">
<Value>%ParentBatch</Value>
</Value>
<Value name="28">
<Value>MaterialType</Value>
</Value>
</Data>
<DataLocation>^UST.SAP.RecordMap.PFCFB.RecordD</DataLocation>
<DefaultData>RecordDefaultData</DefaultData>
<ExtentSize>2000000</ExtentSize>
<IdLocation>^UST.SAP.RecordMap.PFCFB.RecordD</IdLocation>
<IndexLocation>^UST.SAP.RecordMap.PFCFB.RecordI</IndexLocation>
<StreamLocation>^UST.SAP.RecordMap.PFCFB.RecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
