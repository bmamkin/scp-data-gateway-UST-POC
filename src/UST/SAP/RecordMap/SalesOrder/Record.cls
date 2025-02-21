/// THIS IS GENERATED CODE. DO NOT EDIT.<br/>
/// RECORDMAP: Generated from RecordMap 'UST.SAP.RecordMap.SalesOrder'
/// on 2024-03-22 at 21:26:47.945 [2024-03-22 21:26:47.945 UTC]
/// by user bmamkin
Class UST.SAP.RecordMap.SalesOrder.Record Extends (%Persistent, %XML.Adaptor, Ens.Request, EnsLib.RecordMap.Base) [ Inheritance = right, ProcedureBlock ]
{

Parameter INCLUDETOPFIELDS = 1;

/// VBAK.VBELN
Property UniqueID As %String(MAXLEN = 10);

/// VBAK.GBSTK
Property OrderStatus As %String(MAXLEN = 1);

/// VBAK.KUNNR
Property CustomerID As %String(MAXLEN = 10);

/// VBAK.VDATU
Property RequestedDeliveryDate As %String;

/// VBAK.ERDAT
Property OrderPlacedDate As %String;

/// VBAK.AEDAT
Property ChangedOrderDate As %String;

/// VBAK.NETWR
Property OrderValue As %Decimal(SCALE = 2);

/// VBAK.WAERK
Property OrderCurrency As %String(MAXLEN = 15);

Property DataSource As %String(MAXLEN = 15);

Property SourceOrderID As %String(MAXLEN = 15);

/// VBAK.AUART
Property OrderDocumentType As %String(MAXLEN = 4);

/// VBAK.VBGEL
Property QuteNumber As %String(MAXLEN = 10);

Property OpportunityID As %String(MAXLEN = 15);

Parameter RECORDMAPGENERATED = 1;

Relationship %ParentBatch As UST.SAP.RecordMap.SalesOrderBatch [ Cardinality = one, Inverse = Records ];

Index %ParentBatchIdx On %ParentBatch;

Storage Default
{
<Data name="RecordDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>UniqueID</Value>
</Value>
<Value name="3">
<Value>%Source</Value>
</Value>
<Value name="4">
<Value>CustomerID</Value>
</Value>
<Value name="5">
<Value>RequestedDeliveryDate</Value>
</Value>
<Value name="6">
<Value>OrderPlacedDate</Value>
</Value>
<Value name="7">
<Value>ChangedOrderDate</Value>
</Value>
<Value name="8">
<Value>OrderValue</Value>
</Value>
<Value name="9">
<Value>OrderCurrency</Value>
</Value>
<Value name="10">
<Value>DataSource</Value>
</Value>
<Value name="11">
<Value>SourceOrderID</Value>
</Value>
<Value name="12">
<Value>OrderDocumentType</Value>
</Value>
<Value name="13">
<Value>QuteNumber</Value>
</Value>
<Value name="14">
<Value>OpportunityID</Value>
</Value>
<Value name="15">
<Value>%ParentBatch</Value>
</Value>
<Value name="16">
<Value>OrderStatus</Value>
</Value>
</Data>
<DataLocation>^UST.SAP.RecordMap.S9932.RecordD</DataLocation>
<DefaultData>RecordDefaultData</DefaultData>
<ExtentSize>2000000</ExtentSize>
<IdLocation>^UST.SAP.RecordMap.S9932.RecordD</IdLocation>
<IndexLocation>^UST.SAP.RecordMap.S9932.RecordI</IndexLocation>
<StreamLocation>^UST.SAP.RecordMap.S9932.RecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
