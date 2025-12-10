/*
Copyright (c) 2022 by InterSystems Corporation.
Cambridge, Massachusetts, U.S.A.  All rights reserved.
Confidential property of InterSystems Corporation.
*/

/// This object is used to capture line details of a sales shipment. It also provide the 
/// link to the corresponding sales order line if order information is available. Although 
/// product info can be specified directly in this object (which is important when order
/// information is not available), it is preferred to get product info from the corresponding
/// sales order lines.
/// 
/// Extensions to this object were made to meet o9 requirements for demand planning model.
Class SC.Data.SalesShipmentLine Extends SC.Core.Data.SalesShipmentLine
{

/// sales order item category
Property salesOrderItemCategory As %String(MAXLEN = 256);

/// higher-level item in BOM structures
Property highLevelItemInBOM As %Integer;

/// customer PO number line item
Property itemPurchasingDocument As %String(MAXLEN = 128);

/// delivery group
Property deliveryGroup As %Integer;

/// quantity
Property quantity As %Numeric;

/// delivery priority
Property deliveryPriority As %String(MAXLEN = 128);

/// ship-to location ID
Property shipToLocationId As %String(MAXLEN = 128);

/// order placed date
Property orderPlacedDate As %DateTime;

/// change order date
Property changeOrderDate As %DateTime;

/// status
Property status As %String(MAXLEN = 128);

/// independent or dependent
Property independentOrDependent As %String(MAXLEN = 128);

/// component
Property component As %String(MAXLEN = 128);

/// requested ship date
Property requestedShipDate As %DateTime;

/// requested delivery date
Property requestedDeliveryDate As %DateTime;

/// order line commit quantity
Property orderCommitQuantity As %Numeric;

/// order actual delivery date
Property orderActualDeliveryDate As %DateTime;

/// order document type
Property orderDocumentType As %String(MAXLEN = 128);

/// sales organization
Property salesOrganization As %String(MAXLEN = 128);

/// sales distribution channel
Property salesDistributionChannel As %String(MAXLEN = 128);

/// sales region
Property salesRegion As %String(MAXLEN = 128);

/// customer PO number
Property customerPONumber As %String(MAXLEN = 128);

/// order sold-to
Property customerId As %String(MAXLEN = 128);

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
<Data name="SalesShipmentLineDefaultData">
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
<Value>salesOrderId</Value>
</Value>
<Value name="5">
<Value>salesOrderLineNumber</Value>
</Value>
<Value name="6">
<Value>valueCurrency</Value>
</Value>
<Value name="7">
<Value>salesOrderLineId</Value>
</Value>
<Value name="8">
<Value>productId</Value>
</Value>
<Value name="9">
<Value>salesShipmentId</Value>
</Value>
<Value name="10">
<Value>quantityShipped</Value>
</Value>
<Value name="11">
<Value>recordCreatedTime</Value>
</Value>
<Value name="12">
<Value>uid</Value>
</Value>
<Value name="13">
<Value>unitOfMeasure</Value>
</Value>
<Value name="14">
<Value>value</Value>
</Value>
<Value name="15">
<Value>salesOrderItemCategory</Value>
</Value>
<Value name="16">
<Value>highLevelItemInBOM</Value>
</Value>
<Value name="17">
<Value>itemPurchasingDocument</Value>
</Value>
<Value name="18">
<Value>deliveryGroup</Value>
</Value>
<Value name="19">
<Value>quantity</Value>
</Value>
<Value name="20">
<Value>deliveryPriority</Value>
</Value>
<Value name="21">
<Value>shipToLocationId</Value>
</Value>
<Value name="22">
<Value>orderPlacedDate</Value>
</Value>
<Value name="23">
<Value>changeOrderDate</Value>
</Value>
<Value name="24">
<Value>status</Value>
</Value>
<Value name="25">
<Value>independentOrDependent</Value>
</Value>
<Value name="26">
<Value>component</Value>
</Value>
<Value name="27">
<Value>requestedShipDate</Value>
</Value>
<Value name="28">
<Value>requestedDeliveryDate</Value>
</Value>
<Value name="29">
<Value>orderCommitQuantity</Value>
</Value>
<Value name="30">
<Value>orderActualDeliveryDate</Value>
</Value>
<Value name="31">
<Value>orderDocumentType</Value>
</Value>
<Value name="32">
<Value>salesOrganization</Value>
</Value>
<Value name="33">
<Value>salesDistributionChannel</Value>
</Value>
<Value name="34">
<Value>salesRegion</Value>
</Value>
<Value name="35">
<Value>customerPONumber</Value>
</Value>
<Value name="36">
<Value>customerId</Value>
</Value>
<Value name="37">
<Value>orderQuoteNumber</Value>
</Value>
<Value name="38">
<Value>opportunityId</Value>
</Value>
<Value name="39">
<Value>shipTo</Value>
</Value>
<Value name="40">
<Value>sourceSystem</Value>
</Value>
</Data>
<DataLocation>^SC.Data.SalesShipmentLineD</DataLocation>
<DefaultData>SalesShipmentLineDefaultData</DefaultData>
<ExtentSize>42</ExtentSize>
<IdLocation>^SC.Data.SalesShipmentLineD</IdLocation>
<IndexLocation>^SC.Data.SalesShipmentLineI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,16,$lb("-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000"),$lb(21,21,21,21,21,21,21,21,21,21,21,21,21,21,21),$lb(758198320,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,758198320))</Histogram>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,1,0,$lb(1,3,6,9,12,15,18,21,24,27,30,33,36,38,40,42),$lb(0,0,0,0,1,1,0,1,1,0,1,1,1,0,1),$lb(822083584,822083584,855638016,855638016,905969664,905969664,956301312,956301312,825360384,838860800,889192448,889192448,939524096,825753600,842072064,822083584,872415232,872415232,922746880,842465280,858783744,805306368,855638016,855638016,905969664,905969664,939524096,859308032,875560960,805306368,838860800,875692032))</Histogram>
<Selectivity>1</Selectivity>
</Property>
<Property name="lastUpdatedTime">
<AverageFieldSize>25</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb("2025-11-11 19:27:16.426","2025-11-11 19:27:16.451","2025-11-11 19:27:16.687","2025-11-11 19:27:16.692","2025-11-11 19:27:16.693","2025-11-11 19:27:16.754","2025-11-11 19:27:16.762","2025-11-11 19:27:16.774","2025-11-11 19:27:16.776","2025-11-11 19:27:16.782","2025-11-11 19:27:16.986","2025-11-11 19:27:22.966","2025-11-11 19:27:23.423","2025-11-11 19:27:23.423","2025-11-11 19:27:23.569","2025-11-11 19:27:23.570"),$lb(21,20,21,22,20,21,21,22,21,20,17,18,24,20,21),$lb(842019381,842399744,892403712,875901184,909653760,943128576,959578112,838860800,855638016,909718272,926233600,892600320,909246464,909246464,926154752,872415232,905969664,926285824,942800896,926429696,959985152,825634361,842149433,841890102,858666034,0,0,875705088,892745984,909705216,925892608,842019381))</Histogram>
<Selectivity>3.8462%</Selectivity>
</Property>
<Property name="lineNumber">
<AverageFieldSize>11.71</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" 0JR2XTHAWN"," 1MYLH7JS64"," 4TYJJL4GSC"," 5YUZPN1YR"," 8RSVMAS02R"," EVJXAF2J3F"," GKORTF0VKT"," JE21HWWRV"," N0CBJDTMU"," OU8DM52GH"," S8OR27SE2"," TO8LKRR2TF"," WM2P4MCWW"," XOCOZB7R5N"," YRZJ1H58RK"," ZC44VPJ7N5"),$lb(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),$lb(540035666,810177074,827152716,827152716,877943114,877943114,895047002,895047002,944919382,944919382,1163283032,1163283032,1196117842,1196117842,1246048817,1246048817,1311785794,1311785794,1330985028,1330985028,1396199250,1396199250,1414477900,1414477900,1464676944,1464676944,1481589583,1481589583,1498569290,1498569290,1514353716,542786356))</Histogram>
<Selectivity>2.3810%</Selectivity>
</Property>
<Property name="productId">
<AverageFieldSize>11.52</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" 20QBDHZA6"," 20QBDHZA6"," 6S3R6NKM"," 72STSQ6XJ"," 72STSQ6XJ"," 8I8S5FD4Q"," 8WEZFZ4C8V"," A3LA1KPFB4"," A3LA1KPFB4"," B0FIQOATJJ"," D8BZEPCZRZ"," ES5DQQ5JQW"," OEOK027ZQK"," OEOK027ZQK"," QDQ806IU7N"," QDQ806IU7N"),$lb(11,1,1,11,1,2,1,12,1,1,1,1,12,1,12),$lb(540160081,0,0,842027330,911422290,911422290,926045012,0,0,926045012,944322643,1228428085,1464162886,945243482,1093880897,0,0,1093880897,1110459977,1110459977,1144537690,1144537690,1163081028,1163081028,1329942347,0,0,1329942347,1363431736,0,0,542196817))</Histogram>
<Selectivity>9.0909%</Selectivity>
</Property>
<Property name="quantityShipped">
<AverageFieldSize>2.1</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,1,13,$lb(-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,-10000000000000000000,0,10,12),$lb(21,21,21,21,21,21,21,21,21,21,21,21,0,0,1),$lb(758198320,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,758198320,805306368,805306368,825229312,805306368,838860800,825360384))</Histogram>
<OutlierSelectivity>.880952:</OutlierSelectivity>
<Selectivity>3.9683%</Selectivity>
</Property>
<Property name="recordCreatedTime">
<AverageFieldSize>24.9</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb("2025-11-11 19:27:16.426","2025-11-11 19:27:16.45","2025-11-11 19:27:16.687","2025-11-11 19:27:16.692","2025-11-11 19:27:16.693","2025-11-11 19:27:16.754","2025-11-11 19:27:16.762","2025-11-11 19:27:16.774","2025-11-11 19:27:16.776","2025-11-11 19:27:16.782","2025-11-11 19:27:16.986","2025-11-11 19:27:22.966","2025-11-11 19:27:23.423","2025-11-11 19:27:23.423","2025-11-11 19:27:23.569","2025-11-11 19:27:23.57"),$lb(21,20,21,22,20,21,21,22,21,20,17,18,24,20,21),$lb(842019381,842399744,889192448,875888640,909653760,943128576,959578112,838860800,855638016,909718272,926233600,892600320,909246464,909246464,926154752,872415232,905969664,926285824,942800896,926429696,959985152,825634361,842149433,841890102,858666034,0,0,875705088,892745984,909705216,922746880,842019381))</Histogram>
<Selectivity>3.8462%</Selectivity>
</Property>
<Property name="salesOrderId">
<AverageFieldSize>4.76</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," 31NWHP0F5U"," U61MFNO1K3"," U61MFNO1K3"," YRLOP28EQ"," YRLOP28EQ"),$lb(2,2,2,2,2,2,2,2,2,2,1,1,12,1,11),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,858869335,858869335,1429614925,0,0,1429614925,1498565711,0,0,542724684))</Histogram>
<OutlierSelectivity>.714286:</OutlierSelectivity>
<Selectivity>9.5238%</Selectivity>
</Property>
<Property name="salesOrderLineId">
<AverageFieldSize>11.69</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" 0JRFSXF4RS"," 1G68ODW0LV"," 4AQQKLUDV"," 6HKZ0EPHH8"," 8C64R2ROJP"," BIXDSSAFC6"," FOF2B6FUA2"," IUG21GHGVF"," LA8IFES38"," PZAXK50HY"," S6BALEKDF"," U6CIMLET68"," W47UK2RMDQ"," WMQPCOGWV"," Y2GV60PYC"," ZUHUVPT8H"),$lb(1,1,1,1,1,1,1,1,1,1,1,1,2,1,1),$lb(540035666,810177094,826750520,826750520,876695889,876695889,910707546,910707546,943928884,943928884,1112102980,1112102980,1179600434,1179600434,1230325554,1230325554,1279342665,1279342665,1348092248,1348092248,1396064833,1396064833,1429619529,1429619529,1463039829,876041547,1297174595,1464684880,1496467286,1496467286,1515538517,542790984))</Histogram>
<Selectivity>2.3810%</Selectivity>
</Property>
<Property name="salesOrderLineNumber">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "),$lb(2,2,2,2,2,2,2,2,2,2,2,2,2,2,2),$lb(536870912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,536870912))</Histogram>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="salesShipmentId">
<AverageFieldSize>11.69</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" 3GK00B6CN"," 4GZVJHRL8R"," 6KNGP38CZ"," AA5TFWU0QO"," AXGU5ROS67"," DDT7RUX1Q3"," EDKY58Y28R"," I73B8HX5C"," LGW5EJECS8"," LKI4726FOS"," LOTSWP331"," OV1UP3YSX5"," R523ZMUNC"," RBDJFOCONH"," S7ZB5M48Y"," U1MT2010PI"),$lb(1,1,1,2,1,1,1,1,2,2,1,1,2,1,1),$lb(540231499,860310320,877091414,877091414,910904903,910904903,1094792532,1094014022,1481069877,1096304469,1145328695,1145328695,1162103641,1162103641,1228354370,1228354370,1279743797,1196897605,1263088695,1263088695,1330926423,1280267347,1331048789,1331048789,1379217971,892482394,1111771718,1380074570,1396136514,1396136514,1429294420,542454093))</Histogram>
<Selectivity>5.0000%</Selectivity>
</Property>
<Property name="uid">
<AverageFieldSize>11.69</AverageFieldSize>
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
<SQLMap name="salesOrderLineIdIndex">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="salesShipmentIdIndex">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="uidIndex">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^SC.Data.SalesShipmentLineS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
