Class UST.DTL.CDMProductToO9Product Extends Ens.DataTransformDTL [ DependsOn = (SC.Data.Product, UST.o9.RecordMap.Product.Record) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='SC.Data.Product' targetClass='UST.o9.RecordMap.Product.Record' create='new' language='objectscript' >
<assign value='source.uid' property='target.UID' action='set' />
<assign value='source.productNumber' property='target.Item' action='set' />
<assign value='source.type' property='target.ItemType' action='set' />
<assign value='source.materialGroup' property='target.MaterialGroup' action='set' />
<assign value='source.description' property='target.ItemDescription' action='set' />
<assign value='source.defaultUom' property='target.BaseUOM' action='set' />
<assign value='source.basicMaterial' property='target.PlanningItem' action='set' />
<assign value='source.division' property='target.Division' action='set' />
<assign value='source.externalMaterialGroup' property='target.ExternalMaterialGroup' action='set' />
<assign value='source.size' property='target.SizeDimensions' action='set' />
<assign value='source.transportationGroup' property='target.TransportationGroup' action='set' />
<assign value='source.productHierarchy' property='target.HierarchyAttribute' action='set' />
<assign value='source.validFromDate' property='target.ItemIntroDate' action='set' />
<assign value='source.deletionDate' property='target.ItemDiscDate' action='set' />
<assign value='source.materialCategory' property='target.MaterialCategory' action='set' />
<assign value='source.dateOfCreation' property='target.CreationDate' action='set' />
<assign value='source.nameOfPersonWhoCreatedObject' property='target.CreatedBy' action='set' />
<assign value='source.dateOfLastChange' property='target.ChangeDate' action='set' />
<assign value='source.nameOfPersonWhoChangedObject' property='target.ChangedBy' action='set' />
<assign value='source.productBrand' property='target.Brand' action='set' />
<assign value='source.planningAttributeOne' property='target.PlanningAttribute1' action='set' />
<assign value='source.planningAttributeOneValue' property='target.PlanningAttribute1Value' action='set' />
<assign value='source.planningAttributeTwo' property='target.PlanningAttribute2' action='set' />
<assign value='source.planningAttributeTwoValue' property='target.PlanningAttribute2Value' action='set' />
<assign value='source.planningAttributeThree' property='target.PlanningAttribute3' action='set' />
<assign value='source.planningAttributeThreeValue' property='target.PlanningAttribute3Value' action='set' />
</transform>
}

}
