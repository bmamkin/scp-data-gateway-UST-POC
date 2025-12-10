Class UST.DTL.SAPCustomerLocationToO9CustomerLocation Extends Ens.DataTransformDTL [ DependsOn = (UST.SAP.RecordMap.LocationCustomer.Record, UST.o9.RecordMap.Location.Record) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='UST.SAP.RecordMap.LocationCustomer.Record' targetClass='UST.o9.RecordMap.Location.Record' create='new' language='objectscript' >
<assign value='"Customer"' property='target.LocationType' action='set' />
<assign value='source.Customer_"-"_target.LocationType' property='target.LocationID' action='set' />
<assign value='source.Street' property='target.Street' action='set' />
<assign value='source.City' property='target.City' action='set' />
<assign value='source.Region' property='target.StateProvince' action='set' />
<assign value='source.Country' property='target.Country' action='set' />
<assign value='source.PostalCode' property='target.PostalCode' action='set' />
<assign value='source.Name' property='target.LocationDescription' action='set' />
<sql>
<![CDATA[SELECT GlobalRegion INTO :target.LocationRegion FROM SC_Data.GlobalRegionLookup WHERE ISO2 = :source.Country]]></sql>
</transform>
}

}
