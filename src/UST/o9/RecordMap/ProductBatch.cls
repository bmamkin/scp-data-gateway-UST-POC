/// RECORDMAP: Modified during compilation of RecordMap 'UST.o9.RecordMap.Product'
/// on 2024-03-22 at 20:16:52.070 [2024-03-22 20:16:52.070 UTC]
/// by user bmamkin
Class UST.o9.RecordMap.ProductBatch Extends (%Library.Persistent, EnsLib.RecordMap.SimpleBatch)
{

Parameter XMLNAME = "UST_o9_RecordMap_ProductBatch";

Parameter RECORDMAPGENERATED = 1;

Parameter BatchHeader = "UID,Item,Item Type,Material Group,Item Description,BaseUOM,PlanningItem,Division,External Material Group,Size/Dimensions,Transportation Group,Hierarchy Attribute,ItemIntroDate,ItemDiscDate,Material Category,Creation Date,Created By,Change Date,Changed By,Brand,Planning Attribute 1,Planning Attribute 1 value,Planning Attribute 2,Planning Attribute 2 value,Planning Attribute 3,Planning Attribute 3 value";

Parameter HeaderTerm = "\x0d\x0a";

Parameter BatchTrailer;

Parameter TrailerTerm;

Parameter IgnoreLeadingData = 1;

Relationship Records As UST.o9.RecordMap.Product.Record [ Cardinality = many, Inverse = %ParentBatch ];

Trigger OnDelete [ Event = DELETE ]
{
	Set %ok = ..deleteRecords({ID})
}

Parameter XMLTYPE = "UST_o9_RecordMap_ProductBatch";

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
<DataLocation>^UST.o9.RecordMap.ProductBatchD</DataLocation>
<DefaultData>ProductBatchDefaultData</DefaultData>
<IdLocation>^UST.o9.RecordMap.ProductBatchD</IdLocation>
<IndexLocation>^UST.o9.RecordMap.ProductBatchI</IndexLocation>
<StreamLocation>^UST.o9.RecordMap.ProductBatchS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
