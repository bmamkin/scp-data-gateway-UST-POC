/// THIS IS GENERATED CODE. DO NOT EDIT.<br/>
/// RECORDMAP: Generated from RecordMap 'UST.SAP.RecordMap.SalesOrderLine'
/// on 2024-03-25 at 19:43:16.475 [2024-03-25 19:43:16.475 UTC]
/// by user bmamkin
Class UST.SAP.RecordMap.SalesOrderLine.Record Extends (%Persistent, %XML.Adaptor, Ens.Request, EnsLib.RecordMap.Base) [ Inheritance = right, ProcedureBlock ]
{

Parameter INCLUDETOPFIELDS = 1;

/// VBAP.VBELN
Property SalesOrderID As %String(MAXLEN = 10);

/// VBAP.POSNR
Property LineNumber As %Integer;

/// VBAP.MATNR
Property ProductID As %String(MAXLEN = 40);

/// VBAP.PSTYV
Property OrderItemCategory As %String(MAXLEN = 4);

Property HighLevelItemInBOM As %Integer;

/// VBAK.BSTNK
Property CustomerPONumber As %String(MAXLEN = 50);

/// VBAP.POSEX
Property ItemPurchasingDocument As %String(MAXLEN = 6);

/// VBAP.GRKOR
Property DeliveryGroup As %Integer;

/// VBAP.NETWR
Property LineValue As %Decimal(SCALE = 2);

/// VBAP.WAERK
Property ValueCurrency As %String(MAXLEN = 5);

/// VBAP.KWMENG
Property Quantity As %Decimal(SCALE = 3);

/// VBFA.RFMNG
Property QuantityShipped As %Numeric;

/// VBAP.LPRIO
Property DeliveryPriority As %Integer;

/// VBAP.WERKS
Property ShipToLocationID As %String(MAXLEN = 4);

/// VBAP.ERDAT
Property OrderPlacedDate As %String;

/// VBAP.AEDAT
Property ChangeOrderDate As %String;

/// VBAP.GBSTA
Property Status As %String(MAXLEN = 1);

/// VBAP.UEPOS
Property IndependentOrDependent As %String(MAXLEN = 1);

Property Component As %String(MAXLEN = 10);

/// VBEP.WADAT
Property RequestedShipDate As %String;

/// VBAP.EDATU
Property RequestedDeliveryDate As %String;

/// LIKP.WADAT_IST
Property ActualDeliveryDate As %String;

/// VBAK.VKORG
Property SalesOrganization As %String(MAXLEN = 4);

/// VBAK.VTWEG
Property SalesRegion As %String(MAXLEN = 2);

/// VBAK.SPART
Property SalesDistributionChannel As %String(MAXLEN = 2);

/// VBAK.VBELN
Property QuoteNumber As %String(MAXLEN = 10);

/// VBAK.ZCUSTOM
Property OpportunityID As %String(MAXLEN = 15);

/// VBPA.KUNNR
Property OrderLineShipTo As %String(MAXLEN = 10);

/// ZSOURCE_SYS
Property SalesOrderSourceSystem As %String(MAXLEN = 15);

Parameter RECORDMAPGENERATED = 1;

Relationship %ParentBatch As UST.SAP.RecordMap.SalesOrderLineBatch [ Cardinality = one, Inverse = Records ];

Index %ParentBatchIdx On %ParentBatch;

Storage Default
{
<Data name="RecordDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>SalesOrderID</Value>
</Value>
<Value name="3">
<Value>%Source</Value>
</Value>
<Value name="4">
<Value>ProductID</Value>
</Value>
<Value name="5">
<Value>OrderItemCategory</Value>
</Value>
<Value name="6">
<Value>HighLevelItemInBOM</Value>
</Value>
<Value name="7">
<Value>CustomerPONumber</Value>
</Value>
<Value name="8">
<Value>ItemPurchasingDocument</Value>
</Value>
<Value name="9">
<Value>DeliveryGroup</Value>
</Value>
<Value name="10">
<Value>LineValue</Value>
</Value>
<Value name="11">
<Value>ValueCurrency</Value>
</Value>
<Value name="12">
<Value>Quantity</Value>
</Value>
<Value name="13">
<Value>QuantityShipped</Value>
</Value>
<Value name="14">
<Value>DeliveryPriority</Value>
</Value>
<Value name="15">
<Value>ShipToLocationID</Value>
</Value>
<Value name="16">
<Value>OrderPlacedDate</Value>
</Value>
<Value name="17">
<Value>ChangeOrderDate</Value>
</Value>
<Value name="18">
<Value>Status</Value>
</Value>
<Value name="19">
<Value>IndependentOrDependent</Value>
</Value>
<Value name="20">
<Value>Component</Value>
</Value>
<Value name="21">
<Value>RequestedShipDate</Value>
</Value>
<Value name="22">
<Value>RequestedDeliveryDate</Value>
</Value>
<Value name="23">
<Value>ActualDeliveryDate</Value>
</Value>
<Value name="24">
<Value>SalesOrganization</Value>
</Value>
<Value name="25">
<Value>SalesRegion</Value>
</Value>
<Value name="26">
<Value>SalesDistributionChannel</Value>
</Value>
<Value name="27">
<Value>QuoteNumber</Value>
</Value>
<Value name="28">
<Value>OpportunityID</Value>
</Value>
<Value name="29">
<Value>OrderLineShipTo</Value>
</Value>
<Value name="30">
<Value>SalesOrderSourceSystem</Value>
</Value>
<Value name="31">
<Value>%ParentBatch</Value>
</Value>
<Value name="32">
<Value>LineNumber</Value>
</Value>
</Data>
<DataLocation>^UST.SAP.RecordMap.S50F4.RecordD</DataLocation>
<DefaultData>RecordDefaultData</DefaultData>
<ExtentSize>2000000</ExtentSize>
<IdLocation>^UST.SAP.RecordMap.S50F4.RecordD</IdLocation>
<IndexLocation>^UST.SAP.RecordMap.S50F4.RecordI</IndexLocation>
<StreamLocation>^UST.SAP.RecordMap.S50F4.RecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
