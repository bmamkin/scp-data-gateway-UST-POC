Class UST.DTL.FromSAPTestToO9Test Extends Ens.DataTransformDTL [ DependsOn = (UST.SAP.RecordMap.Product.Record, SC.Data.Product) ]
{

/// DTL Definition.
XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform targetClass='SC.Data.Product' targetDocType='' sourceClass='UST.SAP.RecordMap.Product.Record' sourceDocType='' create='new' language='objectscript'>
</transform>
}

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

}
