Class UST.DTL.SAPCustomerLocationToCDMLocation Extends Ens.DataTransformDTL [ DependsOn = (UST.SAP.RecordMap.LocationCustomer.Record, SC.Data.Location) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='UST.SAP.RecordMap.LocationCustomer.Record' targetClass='SC.Data.Location' create='new' language='objectscript' >
<assign value='"Customer"' property='target.type' action='set' />
<assign value='source.Customer_"-"_target.type' property='target.uid' action='set' />
<assign value='source.Street' property='target.street' action='set' />
<assign value='source.Name' property='target.name' action='set' />
<assign value='source.City' property='target.city' action='set' />
<assign value='source.Region' property='target.stateProvince' action='set' />
<assign value='source.Country' property='target.country' action='set' />
<assign value='source.PostalCode' property='target.postalCode' action='set' />
<sql>
<![CDATA[  SELECT GlobalRegion INTO :target.region FROM SC_Data.GlobalRegionLookup WHERE ISO2 = :source.Country]]></sql>
</transform>
}

}
