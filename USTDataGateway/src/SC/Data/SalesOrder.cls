/*
Copyright (c) 2022 by InterSystems Corporation.
Cambridge, Massachusetts, U.S.A.  All rights reserved.
Confidential property of InterSystems Corporation.
*/

/// This object is used to capture sales order information. This object 
/// is used together with SalesOrderLine object (which captures the line details of the order.)
/// 
/// Extensions to this object were made to meet o9 requirements for demand planning model.
Class SC.Data.SalesOrder Extends SC.Core.Data.SalesOrder
{

/// order document type
Property orderDocumentType As %String(MAXLEN = 128);

/// order quote number
Property quoteNumber As %String(MAXLEN = 128);

/// order opportunity ID
Property opportunityId As %String(MAXLEN = 128);

Storage Default
{
<Data name="SalesOrderDefaultData">
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
<Value>requestedShipDate</Value>
</Value>
<Value name="5">
<Value>requestedDeliveryDate</Value>
</Value>
<Value name="6">
<Value>committedShipDate</Value>
</Value>
<Value name="7">
<Value>committedDeliveryDate</Value>
</Value>
<Value name="8">
<Value>orderPlacedDate</Value>
</Value>
<Value name="9">
<Value>changeOrderDate</Value>
</Value>
<Value name="10">
<Value>orderValue</Value>
</Value>
<Value name="11">
<Value>orderCurrency</Value>
</Value>
<Value name="12">
<Value>dataSource</Value>
</Value>
<Value name="13">
<Value>sourceOrderId</Value>
</Value>
<Value name="14">
<Value>customerId</Value>
</Value>
<Value name="15">
<Value>customerPoNumber</Value>
</Value>
<Value name="16">
<Value>orderStatus</Value>
</Value>
<Value name="17">
<Value>salesOrganization</Value>
</Value>
<Value name="18">
<Value>salesRegion</Value>
</Value>
<Value name="19">
<Value>shipToLocationId</Value>
</Value>
<Value name="20">
<Value>uid</Value>
</Value>
<Value name="21">
<Value>orderDocumentType</Value>
</Value>
<Value name="22">
<Value>quoteNumber</Value>
</Value>
<Value name="23">
<Value>opportunityId</Value>
</Value>
</Data>
<DataLocation>^SC.Data.SalesOrderD</DataLocation>
<DefaultData>SalesOrderDefaultData</DefaultData>
<ExtentSize>1</ExtentSize>
<IdLocation>^SC.Data.SalesOrderD</IdLocation>
<IndexLocation>^SC.Data.SalesOrderI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="changeOrderDate">
<AverageFieldSize>21</AverageFieldSize>
<OutlierSelectivity>.999999:"2023-11-28 00:00:00"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="committedDeliveryDate">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="committedShipDate">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="customerId">
<AverageFieldSize>9</AverageFieldSize>
<OutlierSelectivity>.999999:1000271</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="customerPoNumber">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="dataSource">
<AverageFieldSize>4</AverageFieldSize>
<OutlierSelectivity>.999999:"S4"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="lastUpdatedTime">
<AverageFieldSize>25</AverageFieldSize>
<OutlierSelectivity>.999999:"2024-03-07 02:22:05.065"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="opportunityId">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="orderCurrency">
<AverageFieldSize>5</AverageFieldSize>
<OutlierSelectivity>.999999:"USD"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="orderDocumentType">
<AverageFieldSize>5</AverageFieldSize>
<OutlierSelectivity>.999999:"ZOR"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="orderPlacedDate">
<AverageFieldSize>21</AverageFieldSize>
<OutlierSelectivity>.999999:"2022-11-16 00:00:00"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="orderStatus">
<AverageFieldSize>3</AverageFieldSize>
<OutlierSelectivity>.999999:"B"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="orderValue">
<AverageFieldSize>4</AverageFieldSize>
<OutlierSelectivity>.999999:600</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="quoteNumber">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="recordCreatedTime">
<AverageFieldSize>25</AverageFieldSize>
<OutlierSelectivity>.999999:"2024-03-07 02:22:05.064"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="requestedDeliveryDate">
<AverageFieldSize>21</AverageFieldSize>
<OutlierSelectivity>.999999:"2023-11-25 00:00:00"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="requestedShipDate">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="salesOrganization">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="salesRegion">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="shipToLocationId">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="sourceOrderId">
<AverageFieldSize>4</AverageFieldSize>
<OutlierSelectivity>.999999:"S4"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="uid">
<AverageFieldSize>7</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="customerIdIndex">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="shipToLocationIdIndex">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="uidIndex">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^SC.Data.SalesOrderS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
