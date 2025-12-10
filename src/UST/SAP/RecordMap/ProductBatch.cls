/// RECORDMAP: Modified during compilation of RecordMap 'UST.SAP.RecordMap.Product'
/// on 2024-03-28 at 17:31:02.788 [2024-03-28 17:31:02.788 UTC]
/// by user bmamkin
Class UST.SAP.RecordMap.ProductBatch Extends (%Library.Persistent, EnsLib.RecordMap.SimpleBatch)
{

Parameter XMLNAME = "UST_SAP_RecordMap_ProductBatch";

Parameter RECORDMAPGENERATED = 1;

Parameter BatchHeader = "productNumber,type,materialGroup,description,defaultUnitOfMeasure,basicMaterial,division,externalMaterialGroup,Size,transportationGroup,productHierarchy,validFromDate,deletionDate,materialCategory,dateOfCreation,nameOfPersonWhoCreatedObject,dateOfLastChange,nameOfPersonWhoChangedObject,brand,internalCharacteristic,characteristicValue,internalCharacteristic,characteristicValue,internalCharacteristic,characteristicValue";

Parameter HeaderTerm = "\x0d\x0a";

Parameter BatchTrailer;

Parameter TrailerTerm;

Parameter IgnoreLeadingData = 1;

Relationship Records As UST.SAP.RecordMap.Product.Record [ Cardinality = many, Inverse = %ParentBatch ];

Trigger OnDelete [ Event = DELETE ]
{
	Set %ok = ..deleteRecords({ID})
}

Parameter XMLTYPE = "UST_SAP_RecordMap_ProductBatch";

Storage Default
{
<Data name="ProductBatchDefaultData">
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
<DataLocation>^UST.SAP.Recor1897.ProductBatchD</DataLocation>
<DefaultData>ProductBatchDefaultData</DefaultData>
<IdLocation>^UST.SAP.Recor1897.ProductBatchD</IdLocation>
<IndexLocation>^UST.SAP.Recor1897.ProductBatchI</IndexLocation>
<StreamLocation>^UST.SAP.Recor1897.ProductBatchS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
