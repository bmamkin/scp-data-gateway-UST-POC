/// RECORDMAP: Modified during compilation of RecordMap 'UST.o9.RecordMap.Location'
/// on 2024-03-22 at 19:49:05.851 [2024-03-22 19:49:05.851 UTC]
/// by user bmamkin
Class UST.o9.RecordMap.LocationBatch Extends (%Library.Persistent, EnsLib.RecordMap.SimpleBatch)
{

Parameter XMLNAME = "UST_o9_RecordMap_LocationBatch";

Parameter RECORDMAPGENERATED = 1;

Parameter BatchHeader = "Location ID,Location Description,Location Type,Street,City,state-province,Location New Attribute for Country,Postal Code,Location Region";

Parameter HeaderTerm = "\x0d\x0a";

Parameter BatchTrailer;

Parameter TrailerTerm;

Parameter IgnoreLeadingData = 1;

Relationship Records As UST.o9.RecordMap.Location.Record [ Cardinality = many, Inverse = %ParentBatch ];

Trigger OnDelete [ Event = DELETE ]
{
	Set %ok = ..deleteRecords({ID})
}

Parameter XMLTYPE = "UST_o9_RecordMap_LocationBatch";

Storage Default
{
<Data name="LocationBatchDefaultData">
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
<DataLocation>^UST.o9.RecorCA13.LocationBatchD</DataLocation>
<DefaultData>LocationBatchDefaultData</DefaultData>
<ExtentSize>6</ExtentSize>
<IdLocation>^UST.o9.RecorCA13.LocationBatchD</IdLocation>
<IndexLocation>^UST.o9.RecorCA13.LocationBatchI</IndexLocation>
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
<AverageFieldSize>41.17</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="BatchHeader">
<AverageFieldSize>140.5</AverageFieldSize>
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
<StreamLocation>^UST.o9.RecorCA13.LocationBatchS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
