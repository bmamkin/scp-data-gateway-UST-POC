/// THIS IS GENERATED CODE. DO NOT EDIT.<br/>
/// RECORDMAP: Generated from RecordMap 'UST.o9.RecordMap.SalesOrderCommit'
/// on 2024-03-25 at 20:06:11.733 [2024-03-25 20:06:11.733 UTC]
/// by user bmamkin
Class UST.o9.RecordMap.SalesOrderCommit.Record Extends (%Persistent, %XML.Adaptor, Ens.Request, EnsLib.RecordMap.Base) [ Inheritance = right, ProcedureBlock ]
{

Parameter INCLUDETOPFIELDS = 1;

Property UniqueID As %String;

Property SalesOrderHeaderID As %String(MAXLEN = 10);

Property SalesOrderLineID As %Integer;

Property SalesOrderLineCommitID As %Integer;

Property SalesOrderClass As %String(MAXLEN = 4);

Property Item As %String(MAXLEN = 40);

Property Location As %String(MAXLEN = 4);

Property ShipTo As %String(MAXLEN = 10);

Property Status As %String(MAXLEN = 1);

Property CreationDate As %String;

Property LastChangedDate As %String;

Property SOCommitQuantity As %Numeric;

Property SODeliveredQuantity As %Numeric;

Property SOCommitShipDate As %String;

Property SOCommitActualShipDate As %String;

Property SOCommitActualDeliveryDate As %String;

Property SalesDocumentType As %String;

Property Component As %String(MAXLEN = 10);

Property PurchasingDocumentNumber As %String(MAXLEN = 20);

Property ItemPurchasingDocumentNumber As %String(MAXLEN = 6);

Property IndependentOrDependent As %String(MAXLEN = 1);

Property SoldTo As %String(MAXLEN = 10);

Property Division As %String(MAXLEN = 2);

Property HIghLevelItemInBOM As %Integer;

Property SalesOrganization As %String(MAXLEN = 4);

Property DistributionChannel As %String(MAXLEN = 2);

Property QuoteNumber As %Integer;

Property OpportunityID As %String(MAXLEN = 15);

Property DeliveryGroup As %Integer;

Property DeliveryPriority As %Integer;

Property NetValue As %Decimal(SCALE = 2);

Property Currency As %String(MAXLEN = 5);

Property SORequestQuantity As %Numeric;

Property SourceSystem As %String(MAXLEN = 15);

Parameter RECORDMAPGENERATED = 1;

Relationship %ParentBatch As UST.o9.RecordMap.SalesOrderCommitBatch [ Cardinality = one, Inverse = Records ];

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
<Value>SalesOrderLineCommitID</Value>
</Value>
<Value name="6">
<Value>SalesOrderClass</Value>
</Value>
<Value name="7">
<Value>Item</Value>
</Value>
<Value name="8">
<Value>Location</Value>
</Value>
<Value name="9">
<Value>ShipTo</Value>
</Value>
<Value name="10">
<Value>Status</Value>
</Value>
<Value name="11">
<Value>CreationDate</Value>
</Value>
<Value name="12">
<Value>LastChangedDate</Value>
</Value>
<Value name="13">
<Value>SOCommitQuantity</Value>
</Value>
<Value name="14">
<Value>SODeliveredQuantity</Value>
</Value>
<Value name="15">
<Value>SOCommitShipDate</Value>
</Value>
<Value name="16">
<Value>SOCommitActualShipDate</Value>
</Value>
<Value name="17">
<Value>SOCommitActualDeliveryDate</Value>
</Value>
<Value name="18">
<Value>SalesDocumentType</Value>
</Value>
<Value name="19">
<Value>Component</Value>
</Value>
<Value name="20">
<Value>PurchasingDocumentNumber</Value>
</Value>
<Value name="21">
<Value>ItemPurchasingDocumentNumber</Value>
</Value>
<Value name="22">
<Value>IndependentOrDependent</Value>
</Value>
<Value name="23">
<Value>SoldTo</Value>
</Value>
<Value name="24">
<Value>Division</Value>
</Value>
<Value name="25">
<Value>HIghLevelItemInBOM</Value>
</Value>
<Value name="26">
<Value>SalesOrganization</Value>
</Value>
<Value name="27">
<Value>DistributionChannel</Value>
</Value>
<Value name="28">
<Value>QuoteNumber</Value>
</Value>
<Value name="29">
<Value>OpportunityID</Value>
</Value>
<Value name="30">
<Value>DeliveryGroup</Value>
</Value>
<Value name="31">
<Value>DeliveryPriority</Value>
</Value>
<Value name="32">
<Value>NetValue</Value>
</Value>
<Value name="33">
<Value>Currency</Value>
</Value>
<Value name="34">
<Value>SORequestQuantity</Value>
</Value>
<Value name="35">
<Value>SourceSystem</Value>
</Value>
<Value name="36">
<Value>%ParentBatch</Value>
</Value>
<Value name="37">
<Value>SalesOrderHeaderID</Value>
</Value>
</Data>
<DataLocation>^UST.o9.RecordMap.Sa269E.RecordD</DataLocation>
<DefaultData>RecordDefaultData</DefaultData>
<ExtentSize>2000000</ExtentSize>
<IdLocation>^UST.o9.RecordMap.Sa269E.RecordD</IdLocation>
<IndexLocation>^UST.o9.RecordMap.Sa269E.RecordI</IndexLocation>
<StreamLocation>^UST.o9.RecordMap.Sa269E.RecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
