/// RECORDMAP: Modified during compilation of RecordMap 'UST.SAP.RecordMap.LocationPlant'
/// on 2024-03-22 at 19:02:33.361 [2024-03-22 19:02:33.361 UTC]
/// by user bmamkin
Class UST.SAP.RecordMap.LocationPlantBatch Extends (%Library.Persistent, EnsLib.RecordMap.SimpleBatch)
{

Parameter XMLNAME = "UST_SAP_RecordMap_LocationPlantBatch";

Parameter RECORDMAPGENERATED = 1;

Parameter BatchHeader = "unique ID ,Location Name ,Street,City,state-province ,Country,Postal Code";

Parameter HeaderTerm = "\x0d\x0a";

Parameter BatchTrailer;

Parameter TrailerTerm;

Parameter IgnoreLeadingData = 1;

Relationship Records As UST.SAP.RecordMap.LocationPlant.Record [ Cardinality = many, Inverse = %ParentBatch ];

Trigger OnDelete [ Event = DELETE ]
{
	Set %ok = ..deleteRecords({ID})
}

Parameter XMLTYPE = "UST_SAP_RecordMap_LocationPlantBatch";

Storage Default
{
<Data name="LocationPlantBatchDefaultData">
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
<DataLocation>^UST.SAP.Re1897.LocationPlaD906D</DataLocation>
<DefaultData>LocationPlantBatchDefaultData</DefaultData>
<ExtentSize>6</ExtentSize>
<IdLocation>^UST.SAP.Re1897.LocationPlaD906D</IdLocation>
<IndexLocation>^UST.SAP.Re1897.LocationPlaD906I</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="%Source">
<AverageFieldSize>79</AverageFieldSize>
<OutlierSelectivity>.999999:"/Persistent/durable/data/in/md_location_plant_s4_cdm_full_20240228_001014.csv"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="BatchHeader">
<AverageFieldSize>52</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="BatchTrailer">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^UST.SAP.Re1897.LocationPlaD906S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
