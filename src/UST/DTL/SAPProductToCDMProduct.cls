Class UST.DTL.SAPProductToCDMProduct Extends Ens.DataTransformDTL [ DependsOn = (UST.SAP.RecordMap.Product.Record, SC.Data.Product) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='UST.SAP.RecordMap.Product.Record' targetClass='SC.Data.Product' create='new' language='objectscript' >
<assign value='source.ProductNumber_"S4"' property='target.uid' action='set' />
<assign value='source.ProductNumber' property='target.productNumber' action='set' />
<assign value='source.MaterialType' property='target.type' action='set' />
<assign value='source.MaterialGroup' property='target.materialGroup' action='set' />
<assign value='source.MaterialDescription' property='target.description' action='set' />
<assign value='source.DefaultUnitOfMeasure' property='target.defaultUom' action='set' />
<assign value='source.BasicMaterial' property='target.basicMaterial' action='set' />
<assign value='source.Division' property='target.division' action='set' />
<assign value='source.ExternalMaterialGroup' property='target.externalMaterialGroup' action='set' />
<assign value='source.Size' property='target.size' action='set' />
<assign value='source.TransportationGroup' property='target.transportationGroup' action='set' />
<assign value='source.ProductHierarchy' property='target.productHierarchy' action='set' />
<assign value='source.ValidFromDate' property='target.validFromDate' action='set' />
<assign value='source.DeletionDate' property='target.deletionDate' action='set' />
<assign value='source.MaterialCategory' property='target.materialCategory' action='set' />
<assign value='source.DateOfCreation' property='target.dateOfCreation' action='set' />
<assign value='source.NameOfPersonWhoCreatedMaterial' property='target.nameOfPersonWhoCreatedObject' action='set' />
<assign value='source.DateOfLastChange' property='target.dateOfLastChange' action='set' />
<assign value='source.NameOfPersonWhoChangedMaterial' property='target.nameOfPersonWhoChangedObject' action='set' />
<assign value='source.Brand' property='target.productBrand' action='set' />
<assign value='source.InternalCharacteristic1' property='target.planningAttributeOne' action='set' />
<assign value='source.CharacteristicValue1' property='target.planningAttributeOneValue' action='set' />
<assign value='source.InternalCharacteristic2' property='target.planningAttributeTwo' action='set' />
<assign value='source.CharacteristicValue2' property='target.planningAttributeTwoValue' action='set' />
<assign value='source.InternalCharacteristic3' property='target.planningAttributeThree' action='set' />
<assign value='source.CharacteristicValue3' property='target.planningAttributeThreeValue' action='set' />
</transform>
}

}
