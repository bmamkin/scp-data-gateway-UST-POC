/*
Copyright (c) 2022 by InterSystems Corporation.
Cambridge, Massachusetts, U.S.A.  All rights reserved.
Confidential property of InterSystems Corporation.
*/

/// This object is used to capture master data of a product. A product can be the final product
/// made and sold by a company, it can also be a part used to make the final product. One can use product
/// type attributes to differential different type of products (such as final products vs parts/items).
/// 
/// Extensions to this object were made to meet o9 requirements for demand planning model.
Class SC.Data.Product Extends SC.Core.Data.Product
{

/// material group
Property materialGroup As %String(MAXLEN = 128);

/// planning item
Property basicMaterial As %String(MAXLEN = 128);

/// division
Property division As %String(MAXLEN = 128);

/// external material group
Property externalMaterialGroup As %String(MAXLEN = 128);

/// size / dimensions
Property size As %String(MAXLEN = 128);

/// trasnportation group
Property transportationGroup As %String(MAXLEN = 128);

/// hierarchy attribute
Property productHierarchy As %String(MAXLEN = 128);

/// item intro date
Property validFromDate As %DateTime;

/// item disc date
Property deletionDate As %DateTime;

/// material category
Property materialCategory As %String(MAXLEN = 128);

/// creation date
Property dateOfCreation As %DateTime;

/// created by
Property nameOfPersonWhoCreatedObject As %String(MAXLEN = 256);

/// change date
Property dateOfLastChange As %DateTime;

/// changed by
Property nameOfPersonWhoChangedObject As %String(MAXLEN = 256);

/// planning attribute 1
Property planningAttributeOne As %String(MAXLEN = 128);

/// planning attribute 1 value
Property planningAttributeOneValue As %String(MAXLEN = 128);

/// planning attribute 2
Property planningAttributeTwo As %String(MAXLEN = 128);

/// planning attribute 2 value
Property planningAttributeTwoValue As %String(MAXLEN = 128);

/// planning attribute 3
Property planningAttributeThree As %String(MAXLEN = 128);

/// planning attribute 3 value
Property planningAttributeThreeValue As %String(MAXLEN = 128);

Storage Default
{
<Data name="ProductDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>recordCreatedTime</Value>
</Value>
<Value name="3">
<Value>lastUpdatedTime</Value>
</Value>
<Value name="4">
<Value>dataSource</Value>
</Value>
<Value name="5">
<Value>sourceProductId</Value>
</Value>
<Value name="6">
<Value>productClass</Value>
</Value>
<Value name="7">
<Value>productCategory</Value>
</Value>
<Value name="8">
<Value>productBrand</Value>
</Value>
<Value name="9">
<Value>productFamily</Value>
</Value>
<Value name="10">
<Value>productSegment</Value>
</Value>
<Value name="11">
<Value>productNumber</Value>
</Value>
<Value name="12">
<Value>name</Value>
</Value>
<Value name="13">
<Value>description</Value>
</Value>
<Value name="14">
<Value>type</Value>
</Value>
<Value name="15">
<Value>status</Value>
</Value>
<Value name="16">
<Value>gtin</Value>
</Value>
<Value name="17">
<Value>defaultUom</Value>
</Value>
<Value name="18">
<Value>shelfLife</Value>
</Value>
<Value name="19">
<Value>shelfLifeUom</Value>
</Value>
<Value name="20">
<Value>agingThreshold</Value>
</Value>
<Value name="21">
<Value>agingThresholdUom</Value>
</Value>
<Value name="22">
<Value>defaultLeadTime</Value>
</Value>
<Value name="23">
<Value>leadTimeUom</Value>
</Value>
<Value name="24">
<Value>defaultGoodReceiptProcessingTime</Value>
</Value>
<Value name="25">
<Value>goodReceiptProcessingTimeUom</Value>
</Value>
<Value name="26">
<Value>costControl</Value>
</Value>
<Value name="27">
<Value>standardCost</Value>
</Value>
<Value name="28">
<Value>movingAverageCost</Value>
</Value>
<Value name="29">
<Value>costCurrency</Value>
</Value>
<Value name="30">
<Value>uid</Value>
</Value>
<Value name="31">
<Value>materialGroup</Value>
</Value>
<Value name="32">
<Value>basicMaterial</Value>
</Value>
<Value name="33">
<Value>division</Value>
</Value>
<Value name="34">
<Value>externalMaterialGroup</Value>
</Value>
<Value name="35">
<Value>size</Value>
</Value>
<Value name="36">
<Value>transportationGroup</Value>
</Value>
<Value name="37">
<Value>productHierarchy</Value>
</Value>
<Value name="38">
<Value>validFromDate</Value>
</Value>
<Value name="39">
<Value>deletionDate</Value>
</Value>
<Value name="40">
<Value>materialCategory</Value>
</Value>
<Value name="41">
<Value>dateOfCreation</Value>
</Value>
<Value name="42">
<Value>nameOfPersonWhoCreatedObject</Value>
</Value>
<Value name="43">
<Value>dateOfLastChange</Value>
</Value>
<Value name="44">
<Value>nameOfPersonWhoChangedObject</Value>
</Value>
<Value name="45">
<Value>planningAttributeOne</Value>
</Value>
<Value name="46">
<Value>planningAttributeOneValue</Value>
</Value>
<Value name="47">
<Value>planningAttributeTwo</Value>
</Value>
<Value name="48">
<Value>planningAttributeTwoValue</Value>
</Value>
<Value name="49">
<Value>planningAttributeThree</Value>
</Value>
<Value name="50">
<Value>planningAttributeThreeValue</Value>
</Value>
<Value name="51">
<Value>defaultUnitOfMeasure</Value>
</Value>
</Data>
<DataLocation>^SC.Data.ProductD</DataLocation>
<DefaultData>ProductDefaultData</DefaultData>
<ExtentSize>3</ExtentSize>
<IdLocation>^SC.Data.ProductD</IdLocation>
<IndexLocation>^SC.Data.ProductI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="agingThreshold">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="agingThresholdUom">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="basicMaterial">
<AverageFieldSize>6</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="costControl">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="costCurrency">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="dataSource">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="dateOfCreation">
<AverageFieldSize>4.67</AverageFieldSize>
<Selectivity>33.3333%</Selectivity>
</Property>
<Property name="dateOfLastChange">
<AverageFieldSize>4.67</AverageFieldSize>
<Selectivity>33.3333%</Selectivity>
</Property>
<Property name="defaultGoodReceiptProcessingTime">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="defaultLeadTime">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="defaultUom">
<AverageFieldSize>4</AverageFieldSize>
<OutlierSelectivity>.999999:"EA"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="deletionDate">
<AverageFieldSize>5</AverageFieldSize>
<OutlierSelectivity>.999999:2980013</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="description">
<AverageFieldSize>16.67</AverageFieldSize>
<Selectivity>33.3333%</Selectivity>
</Property>
<Property name="division">
<AverageFieldSize>4</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="externalMaterialGroup">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="goodReceiptProcessingTimeUom">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="gtin">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="lastUpdatedTime">
<AverageFieldSize>25</AverageFieldSize>
<Selectivity>33.3333%</Selectivity>
</Property>
<Property name="leadTimeUom">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="materialCategory">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="materialGroup">
<AverageFieldSize>4.67</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="movingAverageCost">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="name">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="nameOfPersonWhoChangedObject">
<AverageFieldSize>12</AverageFieldSize>
<Selectivity>33.3333%</Selectivity>
</Property>
<Property name="nameOfPersonWhoCreatedObject">
<AverageFieldSize>11.33</AverageFieldSize>
<Selectivity>33.3333%</Selectivity>
</Property>
<Property name="planningAttributeOne">
<AverageFieldSize>3.67</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="planningAttributeOneValue">
<AverageFieldSize>3.67</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="planningAttributeThree">
<AverageFieldSize>4.67</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="planningAttributeThreeValue">
<AverageFieldSize>4.33</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="planningAttributeTwo">
<AverageFieldSize>4.67</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="planningAttributeTwoValue">
<AverageFieldSize>3.33</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="productBrand">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="productCategory">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="productClass">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="productFamily">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="productHierarchy">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="productNumber">
<AverageFieldSize>9.67</AverageFieldSize>
<Selectivity>33.3333%</Selectivity>
</Property>
<Property name="productSegment">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="recordCreatedTime">
<AverageFieldSize>24.33</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="shelfLife">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="shelfLifeUom">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="size">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="sourceProductId">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="standardCost">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="status">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="transportationGroup">
<AverageFieldSize>4.67</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="type">
<AverageFieldSize>6</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="uid">
<AverageFieldSize>11.67</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="validFromDate">
<AverageFieldSize>4.67</AverageFieldSize>
<Selectivity>33.3333%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="uidIndex">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^SC.Data.ProductS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
