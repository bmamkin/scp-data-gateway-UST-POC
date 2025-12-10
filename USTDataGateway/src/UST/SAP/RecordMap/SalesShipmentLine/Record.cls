/// THIS IS GENERATED CODE. DO NOT EDIT.<br/>
/// RECORDMAP: Generated from RecordMap 'UST.SAP.RecordMap.SalesShipmentLine'
/// on 2024-03-25 at 20:04:20.107 [2024-03-25 20:04:20.107 UTC]
/// by user bmamkin
Class UST.SAP.RecordMap.SalesShipmentLine.Record Extends (%Persistent, %XML.Adaptor, Ens.Request, EnsLib.RecordMap.Base) [ Inheritance = right, ProcedureBlock ]
{

Parameter INCLUDETOPFIELDS = 1;

/// VBAP.VBELN
Property SalesOrderID As %String(MAXLEN = 10);

/// VBAP.POSNR
Property LineNumber As %Integer;

/// VBAP.PSTYV
Property SalesOrderItemCategory As %String(MAXLEN = 4);

/// VBAP.MATNR
Property ProductID As %String(MAXLEN = 40);

/// VBAP.UEPOS
Property HighLevelItemInBOM As %Integer;

/// VBAP.POSEX
Property ItemPurchasingDocument As %String(MAXLEN = 6);

/// VBAP.GRKOR
Property DeliveryGroup As %Integer;

/// VBAP.NETWR
Property Value As %Decimal(SCALE = 2);

/// VBAP.WAERK
Property ValueCurrency As %String(MAXLEN = 5);

/// VBAP.KWMENG
Property Quantity As %Decimal(SCALE = 3);

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

/// VBAP.Component
Property Component As %String(MAXLEN = 10);

/// VBFA.RFMNG
Property QuantityShipped As %Numeric;

/// VBEP.WADAT
Property RequestedShipDate As %String;

/// VBEP.ETENR
Property SalesOrderLineNumber As %String;

/// VBEP.EDATU
Property RequestedDeliveryDate As %String;

/// VBEP.BMENG
Property OrderCommitQuantity As %Decimal(SCALE = 3);

/// LIKP.WADAT_IST
Property OrderActualDeliveryDate As %String;

/// VBAK.AUART
Property OrderDocumentType As %String(MAXLEN = 4);

/// VBAK.VKORG
Property SalesOrganization As %String(MAXLEN = 4);

/// VBAK.SPART
Property SalesDistributionChannel As %String(MAXLEN = 2);

/// VBAK.VTWEG
Property SalesRegion As %String(MAXLEN = 2);

/// VBAK.BSTNK
Property CustomerPONumber As %String(MAXLEN = 20);

/// VBAK.KUNNR
Property CustomerID As %String(MAXLEN = 10);

/// VBAK.VBELN
Property QuoteNumber As %Integer;

Property OpportunityID As %String(MAXLEN = 15);

/// VBPA.KUNNR
Property ShipTo As %String(MAXLEN = 10);

Property SourceSystem As %String(MAXLEN = 15);

Parameter RECORDMAPGENERATED = 1;

Relationship %ParentBatch As UST.SAP.RecordMap.SalesShipmentLineBatch [ Cardinality = one, Inverse = Records ];

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
<Value>SalesOrderItemCategory</Value>
</Value>
<Value name="5">
<Value>ProductID</Value>
</Value>
<Value name="6">
<Value>HighLevelItemInBOM</Value>
</Value>
<Value name="7">
<Value>ItemPurchasingDocument</Value>
</Value>
<Value name="8">
<Value>DeliveryGroup</Value>
</Value>
<Value name="9">
<Value>Value</Value>
</Value>
<Value name="10">
<Value>ValueCurrency</Value>
</Value>
<Value name="11">
<Value>Quantity</Value>
</Value>
<Value name="12">
<Value>DeliveryPriority</Value>
</Value>
<Value name="13">
<Value>ShipToLocationID</Value>
</Value>
<Value name="14">
<Value>OrderPlacedDate</Value>
</Value>
<Value name="15">
<Value>ChangeOrderDate</Value>
</Value>
<Value name="16">
<Value>Status</Value>
</Value>
<Value name="17">
<Value>IndependentOrDependent</Value>
</Value>
<Value name="18">
<Value>Component</Value>
</Value>
<Value name="19">
<Value>QuantityShipped</Value>
</Value>
<Value name="20">
<Value>RequestedShipDate</Value>
</Value>
<Value name="21">
<Value>SalesOrderLineNumber</Value>
</Value>
<Value name="22">
<Value>RequestedDeliveryDate</Value>
</Value>
<Value name="23">
<Value>OrderCommitQuantity</Value>
</Value>
<Value name="24">
<Value>OrderActualDeliveryDate</Value>
</Value>
<Value name="25">
<Value>OrderDocumentType</Value>
</Value>
<Value name="26">
<Value>SalesOrganization</Value>
</Value>
<Value name="27">
<Value>SalesDistributionChannel</Value>
</Value>
<Value name="28">
<Value>SalesRegion</Value>
</Value>
<Value name="29">
<Value>CustomerPONumber</Value>
</Value>
<Value name="30">
<Value>CustomerID</Value>
</Value>
<Value name="31">
<Value>QuoteNumber</Value>
</Value>
<Value name="32">
<Value>OpportunityID</Value>
</Value>
<Value name="33">
<Value>ShipTo</Value>
</Value>
<Value name="34">
<Value>SourceSystem</Value>
</Value>
<Value name="35">
<Value>%ParentBatch</Value>
</Value>
<Value name="36">
<Value>LineNumber</Value>
</Value>
</Data>
<DataLocation>^UST.SAP.RecordMap.S9F2F.RecordD</DataLocation>
<DefaultData>RecordDefaultData</DefaultData>
<ExtentSize>2000000</ExtentSize>
<IdLocation>^UST.SAP.RecordMap.S9F2F.RecordD</IdLocation>
<IndexLocation>^UST.SAP.RecordMap.S9F2F.RecordI</IndexLocation>
<StreamLocation>^UST.SAP.RecordMap.S9F2F.RecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
