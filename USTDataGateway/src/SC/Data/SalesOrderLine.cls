/*
Copyright (c) 2022 by InterSystems Corporation.
Cambridge, Massachusetts, U.S.A.  All rights reserved.
Confidential property of InterSystems Corporation.
*/

/// This object is used to capture sales order line details. An order can have one or multiple 
/// order lines. There can be different types of lines, such as a line for a product, and another line
/// for a service. Order line is also linked to sales shipment lines for shipment tracking.
/// 
/// Extensions to this object were made to meet o9 requirements for demand planning model.
Class SC.Data.SalesOrderLine Extends SC.Core.Data.SalesOrderLine
{

/// sales order item category
Property salesOrderItemCategory As %String(MAXLEN = 256);

/// higher-level item in BOM structures
Property highLevelItemInBOM As %Integer;

/// customer PO number line item
Property itemPurchasingDocument As %String(MAXLEN = 128);

/// delivery group
Property deliveryGroup As %Integer;

/// delivery priority
Property deliveryPriority As %String(MAXLEN = 128);

/// order placed date
Property orderPlacedDate As %DateTime;

/// change order date
Property changeOrderDate As %DateTime;

/// independent or dependent
Property independentOrDependent As %String(MAXLEN = 128);

/// component
Property component As %String(MAXLEN = 128);

/// quantity shipped
Property quantityShipped As %Numeric;

/// order actual delivery date
Property orderActualDeliveryDate As %DateTime;

/// sales organization
Property salesOrganization As %String(MAXLEN = 128);

/// sales region
Property salesRegion As %String(MAXLEN = 128);

/// sales distribution channel
Property salesDistributionChannel As %String(MAXLEN = 128);

/// customer PO number
Property customerPONumber As %String(MAXLEN = 128);

/// order quote number
Property orderQuoteNumber As %String(MAXLEN = 128);

/// order opportunity ID
Property opportunityId As %String(MAXLEN = 128);

/// order line ship-to
Property shipTo As %String(MAXLEN = 128);

/// order source system
Property sourceSystem As %String(MAXLEN = 128);

Storage Default
{
<Data name="SalesOrderLineDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>lineNumber</Value>
</Value>
<Value name="3">
<Value>lastUpdatedTime</Value>
</Value>
<Value name="4">
<Value>unitOfMeasure</Value>
</Value>
<Value name="5">
<Value>requestedShipDate</Value>
</Value>
<Value name="6">
<Value>requestedDeliveryDate</Value>
</Value>
<Value name="7">
<Value>status</Value>
</Value>
<Value name="8">
<Value>productId</Value>
</Value>
<Value name="9">
<Value>value</Value>
</Value>
<Value name="10">
<Value>valueCurrency</Value>
</Value>
<Value name="11">
<Value>shipToLocationId</Value>
</Value>
<Value name="12">
<Value>quantity</Value>
</Value>
<Value name="13">
<Value>recordCreatedTime</Value>
</Value>
<Value name="14">
<Value>salesOrderId</Value>
</Value>
<Value name="15">
<Value>type</Value>
</Value>
<Value name="16">
<Value>uid</Value>
</Value>
<Value name="17">
<Value>salesOrderItemCategory</Value>
</Value>
<Value name="18">
<Value>highLevelItemInBOM</Value>
</Value>
<Value name="19">
<Value>itemPurchasingDocument</Value>
</Value>
<Value name="20">
<Value>deliveryGroup</Value>
</Value>
<Value name="21">
<Value>deliveryPriority</Value>
</Value>
<Value name="22">
<Value>orderPlacedDate</Value>
</Value>
<Value name="23">
<Value>changeOrderDate</Value>
</Value>
<Value name="24">
<Value>independentOrDependent</Value>
</Value>
<Value name="25">
<Value>component</Value>
</Value>
<Value name="26">
<Value>quantityShipped</Value>
</Value>
<Value name="27">
<Value>orderActualDeliveryDate</Value>
</Value>
<Value name="28">
<Value>salesOrganization</Value>
</Value>
<Value name="29">
<Value>salesRegion</Value>
</Value>
<Value name="30">
<Value>salesDistributionChannel</Value>
</Value>
<Value name="31">
<Value>customerPONumber</Value>
</Value>
<Value name="32">
<Value>orderQuoteNumber</Value>
</Value>
<Value name="33">
<Value>opportunityId</Value>
</Value>
<Value name="34">
<Value>shipTo</Value>
</Value>
<Value name="35">
<Value>sourceSystem</Value>
</Value>
</Data>
<DataLocation>^SC.Data.SalesOrderLineD</DataLocation>
<DefaultData>SalesOrderLineDefaultData</DefaultData>
<ExtentSize>53</ExtentSize>
<IdLocation>^SC.Data.SalesOrderLineD</IdLocation>
<IndexLocation>^SC.Data.SalesOrderLineI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,16,$lb("-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000"),$lb(21,21,21,21,21,21,21,21,21,21,21,21,21,21,21),$lb(758198320,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,758198320))</Histogram>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,1,0,$lb(1,4,8,12,16,20,24,28,32,35,38,41,44,47,50,53),$lb(0,0,0,1,0,1,1,0,1,1,0,1,1,0,1),$lb(822083584,822083584,872415232,872415232,939524096,939524096,825360384,838860800,905969664,825622528,842006528,805306368,872415232,872415232,939524096,842530816,858914816,838860800,889192448,889192448,939524096,859308032,875626496,822083584,872415232,872415232,922746880,876019712,892338176,805306368,855638016,892534784))</Histogram>
<Selectivity>1</Selectivity>
</Property>
<Property name="lastUpdatedTime">
<AverageFieldSize>25</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb("2025-11-11 19:27:16.402","2025-11-11 19:27:16.426","2025-11-11 19:27:16.685","2025-11-11 19:27:16.691","2025-11-11 19:27:16.752","2025-11-11 19:27:16.760","2025-11-11 19:27:16.768","2025-11-11 19:27:16.773","2025-11-11 19:27:16.880","2025-11-11 19:27:16.932","2025-11-11 19:27:16.985","2025-11-11 19:27:16.990","2025-11-11 19:27:22.965","2025-11-11 19:27:23.421","2025-11-11 19:27:23.568","2025-11-11 19:27:23.568"),$lb(21,20,21,20,21,22,21,20,20,21,21,17,18,20,24),$lb(842019381,808583168,842399744,875705856,909653248,942997504,959512576,909717760,926233088,892469248,909115392,805306368,939524096,909639680,926089216,926364416,943206400,943206400,959656448,858914816,942997504,942997504,959447040,825634361,842149433,841890102,858666034,875704576,892745728,0,0,842019381))</Histogram>
<Selectivity>3.2258%</Selectivity>
</Property>
<Property name="lineNumber">
<AverageFieldSize>11.89</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" 014G84AN1R"," 0KT44RHBM1"," 2V3VYM1WNJ"," 4N2N7H5H81"," 7U2C76AQ4D"," AYRWANN675"," ERHGJ878WS"," HSI5SVEWE"," M8H276NKHL"," MNV7VOHZFE"," OR8HIFFSSI"," RU18ALYVN"," TI753EJAC0"," WH2VT1O35T"," YMPKEPRSLH"," ZJL5NNA78D"),$lb(2,1,1,1,1,1,1,1,2,1,1,1,1,1,1),$lb(540029236,825509688,1263809588,810243124,844510038,844510038,877539918,877539918,928330307,928330307,1096372823,1096372823,1163020359,1163020359,1213417781,1213417781,1295534130,944255543,1314273110,1296979511,1330788424,1330788424,1381314872,1381314872,1414084405,1414084405,1464349270,1464349270,1498239051,1498239051,1514818613,542788172))</Histogram>
<Selectivity>1.8868%</Selectivity>
</Property>
<Property name="productId">
<AverageFieldSize>11.57</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" 20QBDHZA6"," 20QBDHZA6"," 6S3R6NKM"," 72STSQ6XJ"," 8I8S5FD4Q"," 8WEZFZ4C8V"," A3LA1KPFB4"," AJZ6IHU3U7"," B0FIQOATJJ"," D8BZEPCZRZ"," ES5DQQ5JQW"," ES5DQQ5JQW"," NQ8YA17EX"," OEOK027ZQK"," QDQ806IU7N"," YBLD0UHH1I"),$lb(11,1,1,1,2,1,2,1,1,1,12,1,1,1,1),$lb(540160081,0,0,842027330,911422290,911422290,926045012,926045012,944322643,1228428085,1464162886,945243482,1093880897,860635441,1247426121,1095391798,1110459977,1110459977,1144537690,1144537690,1163081028,0,0,1163081028,1313945689,1313945689,1329942347,1329942347,1363431736,1363431736,1497517124,542720588))</Histogram>
<Selectivity>5.8824%</Selectivity>
</Property>
<Property name="quantity">
<AverageFieldSize>2.11</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,1,14,$lb(-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,32,85),$lb(21,21,21,21,21,21,21,21,21,21,21,21,21,0,0),$lb(758198320,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,758198320,858914816,858914816,942997504,942997504))</Histogram>
<OutlierSelectivity>.886792:</OutlierSelectivity>
<Selectivity>2.2642%</Selectivity>
</Property>
<Property name="recordCreatedTime">
<AverageFieldSize>24.83</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb("2025-11-11 19:27:16.402","2025-11-11 19:27:16.426","2025-11-11 19:27:16.685","2025-11-11 19:27:16.691","2025-11-11 19:27:16.752","2025-11-11 19:27:16.76","2025-11-11 19:27:16.768","2025-11-11 19:27:16.773","2025-11-11 19:27:16.88","2025-11-11 19:27:16.932","2025-11-11 19:27:16.984","2025-11-11 19:27:16.99","2025-11-11 19:27:22.965","2025-11-11 19:27:23.421","2025-11-11 19:27:23.568","2025-11-11 19:27:23.568"),$lb(21,20,21,20,21,22,21,20,20,21,21,17,18,20,24),$lb(842019381,808583168,842399744,875705856,909653248,942997504,959512576,909717760,926233088,892469248,905969664,0,939524096,909639680,926089216,926364416,943194112,943194112,959656448,858914816,942931968,942931968,956301312,825634361,842149433,841890102,858666034,875704576,892745728,0,0,842019381))</Histogram>
<Selectivity>3.3333%</Selectivity>
</Property>
<Property name="requestedDeliveryDate">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,16,$lb("-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000"),$lb(21,21,21,21,21,21,21,21,21,21,21,21,21,21,21),$lb(758198320,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,758198320))</Histogram>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="requestedShipDate">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,16,$lb("-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000"),$lb(21,21,21,21,21,21,21,21,21,21,21,21,21,21,21),$lb(758198320,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,758198320))</Histogram>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="salesOrderId">
<AverageFieldSize>11.77</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" 1GQHNCK3UR"," 1QU5HK8YE"," 31NWHP0F5U"," AV3OJRDXX"," D66S6MZRFD"," H2S5JT0HE6"," LIL1WTPTXH"," OVS58ATQXR"," OW00BKN5WZ"," TCBH57UELH"," TX1HN2DGCW"," TX1HN2DGCW"," U61MFNO1K3"," Y2DXB8P41G"," YRLOP28EQ"," YRLOP28EQ"),$lb(2,1,1,1,1,1,1,2,1,2,12,1,1,2,11),$lb(540100433,1196509262,1364538696,827413813,858869335,858869335,1096168271,1096168271,1144403539,1144403539,1211257653,1211257653,1279872049,1279872049,1331057461,1448293688,1462775874,1331114032,1413694024,1128417333,1479624782,0,0,1415065928,1429614925,1429614925,1496466520,843339842,1380732752,0,0,542724684))</Histogram>
<Selectivity>6.6667%</Selectivity>
</Property>
<Property name="shipToLocationId">
<AverageFieldSize>11.62</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" 0DPQ1YM6SX"," 38W4U050L"," AA3SU1N8RW"," BUHEU0HIDH"," DJ5RP52T1X"," GJ3QYKTMS"," GK7A8OXIDU"," GRDU8YVU1"," I3K4DDB1C8"," MV8OBJO6OO"," N8O71WM2Y"," OPFPWNK5M"," OPFPWNK5M"," SKNK6XNXB7"," UQUL8WVFQT"," XZMAH1UL2S"),$lb(1,1,1,1,1,2,2,1,1,1,1,11,1,1,1),$lb(540034128,809783377,859330356,859330356,1094792019,1094792019,1112885317,1112885317,1145714002,1145714002,1196045137,1244877145,1261912376,1261912376,1380209976,1196573781,1228098356,1228098356,1297496143,1297496143,1312313143,1312313143,1330660944,0,0,1330660944,1397444171,1397444171,1431393612,1431393612,1482313025,542661197))</Histogram>
<Selectivity>6.6667%</Selectivity>
</Property>
<Property name="status">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,2),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,536870912))</Histogram>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="type">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,2),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,536870912))</Histogram>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="uid">
<AverageFieldSize>11.68</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="unitOfMeasure">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,2),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,536870912))</Histogram>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="value">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,1,16,$lb(-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000),$lb(21,21,21,21,21,21,21,21,21,21,21,21,21,21,21),$lb(758198320,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,758198320))</Histogram>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="valueCurrency">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,2),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,536870912))</Histogram>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="productIdIndex">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="salesOrderIdIndex">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="shipToLocationIdIndex">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="uidIndex">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^SC.Data.SalesOrderLineS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
