/// RECORDMAP: Modified during compilation of RecordMap 'UST.SAP.RecordMap.SalesOrderLine'
/// on 2024-03-25 at 19:43:16.496 [2024-03-25 19:43:16.496 UTC]
/// by user bmamkin
Class UST.SAP.RecordMap.SalesOrderLineBatch Extends (%Library.Persistent, EnsLib.RecordMap.SimpleBatch)
{

Parameter XMLNAME = "UST_SAP_RecordMap_SalesOrderLineBatch";

Parameter RECORDMAPGENERATED = 1;

Parameter BatchHeader = "uid,lineNumber,productId,orderItemCategory,highLevelItemInBOM,customerPOnumber,itemPurchasingDocument,deliveryGroup,lineValue,valueCurrency,quantity,quantityShipped,deliveryPriority,shiptoLocationID,orderplaceddate,changeorderdate,status,Independent Or Dependent,Component,requestedShipDate,requestedDeliveryDate,orderActualDeliveryDate,salesOrganization,salesRegion,salesDistributionChannel,quoteNumber,opportunityID,orderLineShipTo,salesOrderSourceSystem";

Parameter HeaderTerm = "\x0d\x0a";

Parameter BatchTrailer;

Parameter TrailerTerm;

Parameter IgnoreLeadingData = 1;

Relationship Records As UST.SAP.RecordMap.SalesOrderLine.Record [ Cardinality = many, Inverse = %ParentBatch ];

Trigger OnDelete [ Event = DELETE ]
{
	Set %ok = ..deleteRecords({ID})
}

Parameter XMLTYPE = "UST_SAP_RecordMap_SalesOrderLineBatch";

Storage Default
{
<Data name="SalesOrderLineBatchDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>%Source</Value>
</Value>
<Value name="3">
<Value>BatchHeader</Value>
</Value>
<Value name="4">
<Value>BatchTrailer</Value>
</Value>
</Data>
<DataLocation>^UST.SAP.Re1897.SalesOrderL320ED</DataLocation>
<DefaultData>SalesOrderLineBatchDefaultData</DefaultData>
<IdLocation>^UST.SAP.Re1897.SalesOrderL320ED</IdLocation>
<IndexLocation>^UST.SAP.Re1897.SalesOrderL320EI</IndexLocation>
<StreamLocation>^UST.SAP.Re1897.SalesOrderL320ES</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
