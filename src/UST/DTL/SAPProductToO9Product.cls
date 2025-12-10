Class UST.DTL.SAPProductToO9Product Extends Ens.DataTransformDTL [ DependsOn = (UST.SAP.RecordMap.Product.Record, UST.o9.RecordMap.Product.Record) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='UST.SAP.RecordMap.Product.Record' targetClass='UST.o9.RecordMap.Product.Record' create='new' language='objectscript' >
<assign value='source.ProductNumber_"S4"' property='target.UID' action='set' />
<assign value='source.ProductNumber' property='target.Item' action='set' />
<assign value='source.MaterialType' property='target.ItemType' action='set' />
<assign value='source.MaterialGroup' property='target.MaterialGroup' action='set' />
<assign value='source.MaterialDescription' property='target.ItemDescription' action='set' />
<assign value='source.DefaultUnitOfMeasure' property='target.BaseUOM' action='set' />
<assign value='source.BasicMaterial' property='target.PlanningItem' action='set' />
<assign value='source.Division' property='target.Division' action='set' />
<assign value='source.ExternalMaterialGroup' property='target.ExternalMaterialGroup' action='set' />
<assign value='source.Size' property='target.SizeDimensions' action='set' />
<assign value='source.TransportationGroup' property='target.TransportationGroup' action='set' />
<assign value='source.ProductHierarchy' property='target.HierarchyAttribute' action='set' />
<assign value='source.ValidFromDate' property='target.ItemIntroDate' action='set' />
<assign value='source.DeletionDate' property='target.ItemDiscDate' action='set' />
<assign value='source.MaterialCategory' property='target.MaterialCategory' action='set' />
<assign value='source.DateOfCreation' property='target.CreationDate' action='set' />
<assign value='source.NameOfPersonWhoCreatedMaterial' property='target.CreatedBy' action='set' />
<assign value='source.DateOfLastChange' property='target.ChangeDate' action='set' />
<assign value='source.NameOfPersonWhoChangedMaterial' property='target.ChangedBy' action='set' />
<assign value='source.Brand' property='target.Brand' action='set' />
<assign value='source.InternalCharacteristic1' property='target.PlanningAttribute1' action='set' />
<assign value='source.CharacteristicValue1' property='target.PlanningAttribute1Value' action='set' />
<assign value='source.InternalCharacteristic2' property='target.PlanningAttribute2' action='set' />
<assign value='source.CharacteristicValue2' property='target.PlanningAttribute2Value' action='set' />
<assign value='source.InternalCharacteristic3' property='target.PlanningAttribute3' action='set' />
<assign value='source.CharacteristicValue3' property='target.PlanningAttribute3Value' action='set' />
</transform>
}

}
