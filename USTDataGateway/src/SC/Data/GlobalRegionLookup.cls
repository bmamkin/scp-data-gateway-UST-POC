/*
Copyright (c) 2022 by InterSystems Corporation.
Cambridge, Massachusetts, U.S.A.  All rights reserved.
Confidential property of InterSystems Corporation.
*/

/// Global region is not a standard field in SAP but it is used by O9.  
/// Locations will be mapped to their global regions based on their country.
/// This table is based on three global regions (AMS, EMEA, and APJ), but this mapping could be customized based on future client needs.
/// 
Class SC.Data.GlobalRegionLookup Extends %Persistent
{

/// country name
Property CountryName As %String(MAXLEN = 256);

/// ISO2 abbreviation
Property ISO2 As %String(MAXLEN = 50);

/// ISO3 abbreviation
Property ISO3 As %String(MAXLEN = 50);

/// global region abbreviation
Property GlobalRegion As %String(MAXLEN = 50);

Storage Default
{
<Data name="GlobalRegionLookupDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>CountryName</Value>
</Value>
<Value name="3">
<Value>ISO2</Value>
</Value>
<Value name="4">
<Value>ISO3</Value>
</Value>
<Value name="5">
<Value>GlobalRegion</Value>
</Value>
</Data>
<DataLocation>^SC.Data.GlobalRegionLookupD</DataLocation>
<DefaultData>GlobalRegionLookupDefaultData</DefaultData>
<ExtentSize>244</ExtentSize>
<IdLocation>^SC.Data.GlobalRegionLookupD</IdLocation>
<IndexLocation>^SC.Data.GlobalRegionLookupI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,16,$lb("-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000"),$lb(21,21,21,21,21,21,21,21,21,21,21,21,21,21,21),$lb(758198320,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,758198320))</Histogram>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,1,0,$lb(1,17,34,51,68,84,100,116,132,148,164,180,196,212,228,244),$lb(1,0,0,0,0,0,1,1,1,1,1,1,0,1,1),$lb(822083584,0,922746880,825688064,859045888,859045888,892403712,892403712,909639680,909639680,942931968,942931968,825241600,808452096,825622528,825622528,858914816,858914816,876085248,876085248,909377536,909377536,942669824,942669824,959840256,825832960,842084864,825360384,842530816,842530816,875823104,842281984))</Histogram>
<Selectivity>1</Selectivity>
</Property>
<Property name="CountryName">
<AverageFieldSize>13.87</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" AFGHANISTAN"," BANGLADESH"," CABO VERDE"," CROATIA"," ETHIOPIA"," GRENADA"," IRAN (ISLAMIC REPUBLIC OF)"," KYRGYZSTAN"," MALTA"," NAMIBIA"," PALESTINE, STATE OF"," SAINT BARTHÃ©LEMY"," SINT MAARTEN (DUTCH PART)"," TAIWAN (PROVINCE OF CHINA)"," UNITED ARAB EMIRATES (THE)"," Ã"_$c(133)_"LAND ISLANDS"),$lb(1,1,2,1,1,1,1,1,1,1,1,2,1,1,1),$lb(541148743,1095124808,1111576135,1111576135,1128350287,1094864672,1380925780,1129467713,1163151433,1163151433,1196574030,1196574030,1230127438,1230127438,1264144967,1264144967,1296125012,1296125012,1312902473,1312902473,1346456645,1346456645,1396787534,1095323220,1229870112,1397313108,1413564759,1413564759,1431193940,1431193940,3280292929,549684556))</Histogram>
<Selectivity>0.4098%</Selectivity>
</Property>
<Property name="GlobalRegion">
<AverageFieldSize>5.56</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" AMS"," AMS"," AMS"," AMS"," APJ"," APJ"," APJ"," EMEA"," EMEA"," EMEA"," EMEA"," EMEA"," EMEA"," EMEA"," EMEA"," EMEA"),$lb(5,5,5,2,5,5,1,6,6,6,6,6,6,6,6),$lb(541150547,0,0,0,0,0,0,1297285120,1347026944,0,0,0,0,1095780864,1162691905,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,541412677))</Histogram>
<Selectivity>33.3333%</Selectivity>
</Property>
<Property name="ISO2">
<AverageFieldSize>4</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" AD"," BB"," BY"," CW"," FI"," GN"," IL"," KN"," LY"," MS"," NP"," PT"," SI"," TG"," US"," ZW"),$lb(1,2,1,1,1,1,1,1,1,1,1,1,1,1,1),$lb(541148160,1094975488,1111621632,1107296256,1493172224,1113128960,1129775104,1129775104,1179189248,1179189248,1196294144,1196294144,1229717504,1229717504,1263403008,1263403008,1280901120,1280901120,1297285120,1297285120,1313865728,1313865728,1347682304,1347682304,1397293056,1397293056,1413939200,1413939200,1431502848,1431502848,1515651072,542791424))</Histogram>
<Selectivity>0.4098%</Selectivity>
</Property>
<Property name="ISO3">
<AverageFieldSize>5</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" ABW"," BEL"," BTN"," CUB"," EST"," GMB"," IMN"," KIR"," MAF"," MRT"," NPL"," PSE"," SLV"," TCD"," UMI"," ZWE"),$lb(1,2,1,1,1,1,1,1,2,1,1,1,1,1,1),$lb(541147735,1094866688,1111837696,1162608640,1414397952,1112821248,1129660928,1129660928,1163088896,1163088896,1196245504,1196245504,1229803008,1229803008,1263096320,1263096320,1296123392,1095106560,1381236736,1297241088,1313885184,1313885184,1347634432,1347634432,1397511680,1397511680,1413694464,1413694464,1431128320,1431128320,1515668736,542791493))</Histogram>
<Selectivity>0.4098%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-8</BlockCount>
</SQLMap>
<StreamLocation>^SC.Data.GlobalRegionLookupS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
