Class UST.DTL.CDMLocationToO9Location Extends Ens.DataTransformDTL [ DependsOn = (SC.Data.Location, UST.o9.RecordMap.Location.Record) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='SC.Data.Location' targetClass='UST.o9.RecordMap.Location.Record' create='new' language='objectscript' >
<assign value='source.uid' property='target.LocationID' action='set' />
<assign value='source.name' property='target.LocationDescription' action='set' />
<assign value='source.type' property='target.LocationType' action='set' />
<assign value='source.street' property='target.Street' action='set' />
<assign value='source.city' property='target.City' action='set' />
<assign value='source.stateProvince' property='target.StateProvince' action='set' />
<assign value='source.country' property='target.Country' action='set' />
<assign value='source.postalCode' property='target.PostalCode' action='set' />
<assign value='source.region' property='target.LocationRegion' action='set' />
</transform>
}

}
