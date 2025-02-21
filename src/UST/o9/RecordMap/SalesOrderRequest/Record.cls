/// THIS IS GENERATED CODE. DO NOT EDIT.<br/>
/// RECORDMAP: Generated from RecordMap 'UST.o9.RecordMap.SalesOrderRequest'
/// on 2024-03-25 at 19:51:04.615 [2024-03-25 19:51:04.615 UTC]
/// by user bmamkin
Class UST.o9.RecordMap.SalesOrderRequest.Record Extends (%Persistent, %XML.Adaptor, Ens.Request, EnsLib.RecordMap.Base) [ Inheritance = right, ProcedureBlock ]
{

Parameter INCLUDETOPFIELDS = 1;

Property UniqueID As %String;

Property SalesOrderHeaderID As %String;

Property SalesOrderLineID As %Integer;

Property SalesOrderClass As %String;

Property Item As %String;

Property Location As %String;

Property ShipTo As %String;

Property Status As %String;

Property CreationDate As %String;

Property LastChangedDate As %String;

Property SORequestQuantity As %Decimal(SCALE = 3);

Property SODeliveredQuantity As %Decimal(SCALE = 3);

Property SOActualShipDate As %String;

Property SORequestedDate As %String;

Property SOActualDeliveryDate As %String;

Property Component As %String;

Property PurchasingDocumentNumber As %String;

Property ItemPurchasingOPurchasingDocument As %String;

Property IndependentOrDependent As %String;

Property HIghLevelItemInBOM As %String;

Property SalesOrganization As %String;

Property DistributionChannel As %String;

Property Division As %String;

Property QuoteNumber As %String;

Property OpportunityID As %String;

Property DeliveryGroup As %Integer;

Property DeliveryPriority As %Integer;

Property NetValue As %Decimal(SCALE = 2);

Property Currency As %String;

Property SourceSystem As %String;

Parameter RECORDMAPGENERATED = 1;

Relationship %ParentBatch As UST.o9.RecordMap.SalesOrderRequestBatch [ Cardinality = one, Inverse = Records ];

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
<Value>SalesOrderLineID</Value>
</Value>
<Value name="5">
<Value>SalesOrderClass</Value>
</Value>
<Value name="6">
<Value>Item</Value>
</Value>
<Value name="7">
<Value>Location</Value>
</Value>
<Value name="8">
<Value>ShipTo</Value>
</Value>
<Value name="9">
<Value>Status</Value>
</Value>
<Value name="10">
<Value>CreationDate</Value>
</Value>
<Value name="11">
<Value>LastChangedDate</Value>
</Value>
<Value name="12">
<Value>SORequestQuantity</Value>
</Value>
<Value name="13">
<Value>SODeliveredQuantity</Value>
</Value>
<Value name="14">
<Value>SOActualShipDate</Value>
</Value>
<Value name="15">
<Value>SORequestedDate</Value>
</Value>
<Value name="16">
<Value>SOActualDeliveryDate</Value>
</Value>
<Value name="17">
<Value>Component</Value>
</Value>
<Value name="18">
<Value>PurchasingDocumentNumber</Value>
</Value>
<Value name="19">
<Value>ItemPurchasingOPurchasingDocument</Value>
</Value>
<Value name="20">
<Value>IndependentOrDependent</Value>
</Value>
<Value name="21">
<Value>HIghLevelItemInBOM</Value>
</Value>
<Value name="22">
<Value>SalesOrganization</Value>
</Value>
<Value name="23">
<Value>DistributionChannel</Value>
</Value>
<Value name="24">
<Value>Division</Value>
</Value>
<Value name="25">
<Value>QuoteNumber</Value>
</Value>
<Value name="26">
<Value>OpportunityID</Value>
</Value>
<Value name="27">
<Value>DeliveryGroup</Value>
</Value>
<Value name="28">
<Value>DeliveryPriority</Value>
</Value>
<Value name="29">
<Value>NetValue</Value>
</Value>
<Value name="30">
<Value>Currency</Value>
</Value>
<Value name="31">
<Value>SourceSystem</Value>
</Value>
<Value name="32">
<Value>%ParentBatch</Value>
</Value>
<Value name="33">
<Value>SalesOrderHeaderID</Value>
</Value>
</Data>
<DataLocation>^UST.o9.RecordMap.Sa75B3.RecordD</DataLocation>
<DefaultData>RecordDefaultData</DefaultData>
<ExtentSize>2000000</ExtentSize>
<IdLocation>^UST.o9.RecordMap.Sa75B3.RecordD</IdLocation>
<IndexLocation>^UST.o9.RecordMap.Sa75B3.RecordI</IndexLocation>
<StreamLocation>^UST.o9.RecordMap.Sa75B3.RecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
