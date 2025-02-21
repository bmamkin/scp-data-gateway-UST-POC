/// 
Class UST.BPL.ProductBPL Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='Ens.Request' response='Ens.Response' height='2000' width='2000' >
<context>
<property name='cdmProduct' type='SC.Data.Product' instantiate='0' />
<property name='o9Product' type='UST.o9.RecordMap.Product.Record' instantiate='0' />
<property name='i' type='%Integer' instantiate='0' />
<property name='o9ProductBatch' type='UST.o9.RecordMap.ProductBatch' instantiate='1' />
<property name='status' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='50' />
</parameters>
</property>
</context>
<sequence xend='200' yend='800' >
<if name='Full Load' condition='$FIND(request.%Source,"_full_")' xpos='200' ypos='250' xend='200' yend='700' >
<true>
<sql name='Purge Extent for Full Load' xpos='470' ypos='400' >
<![CDATA[DELETE FROM SC_Data.Product]]>
</sql>
<foreach name='Product Full Load' property='request.Records' key='context.i' xpos='470' ypos='500' xend='200' yend='650' >
<transform name='SAP Product to CDM' class='UST.DTL.SAPProductToCDMProduct' source='request.Records.GetAt(context.i)' target='context.cdmProduct' xpos='200' ypos='250' />
<transform name='CDM Product to o9' class='UST.DTL.CDMProductToO9Product' source='context.cdmProduct' target='context.o9Product' xpos='200' ypos='350' />
<assign name="Set Batch Relationship" property="context.o9Product.%ParentBatch" value="context.o9ProductBatch" action="set" xpos='200' ypos='450' />
<assign name="Save CDM Product Object" property="context.status" value="context.cdmProduct.%Save()" action="set" xpos='200' ypos='550' />
</foreach>
<call name='Initiate Batch Rollover' target='ToO9ProductCSV' async='1' xpos='470' ypos='600' >
<request type='UST.o9.RecordMap.ProductBatch' >
<assign property="callrequest" value="context.o9ProductBatch" action="set" />
<assign property="callrequest.%Source" value="&quot;md_product_s4_&quot;_$PIECE(request.%Source,&quot;_&quot;,5,7)" action="set" />
</request>
<response type='Ens.Response' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</true>
<false>
<foreach name='Product Delta Load' property='request.Records' key='context.i' xpos='200' ypos='400' xend='200' yend='550' >
<transform name='SAP Product to o9' class='UST.DTL.SAPProductToO9Product' source='request.Records.GetAt(context.i)' target='context.o9Product' xpos='200' ypos='250' />
<sql name='Update Product in CDM' xpos='200' ypos='350' >
<![CDATA[INSERT OR UPDATE SC_Data.Product (uid,productNumber,type,materialGroup,description,defaultUom,basicMaterial,division,externalMaterialGroup,size,transportationGroup,productHierarchy,validFromDate,deletionDate,materialCategory,dateOfCreation,nameOfPersonWhoCreatedObject,dateOfLastChange,nameOfPersonWhoChangedObject,productBrand,planningAttributeOne,planningAttributeOneValue,planningAttributeTwo,planningAttributeTwoValue,planningAttributeThree,planningAttributeThreeValue) VALUES (:context.o9Product.UID,:context.o9Product.Item,:context.o9Product.ItemType,:context.o9Product.MaterialGroup,:context.o9Product.ItemDescription,:context.o9Product.BaseUOM,:context.o9Product.PlanningItem,:context.o9Product.Division,:context.o9Product.ExternalMaterialGroup,:context.o9Product.SizeDimensions,:context.o9Product.TransportationGroup,:context.o9Product.HierarchyAttribute,:context.o9Product.ItemIntroDate,:context.o9Product.ItemDiscDate,:context.o9Product.MaterialCategory,:context.o9Product.CreationDate,:context.o9Product.CreatedBy,:context.o9Product.ChangeDate,:context.o9Product.ChangedBy,:context.o9Product.Brand,:context.o9Product.PlanningAttribute1,:context.o9Product.PlanningAttribute1Value,:context.o9Product.PlanningAttribute2,:context.o9Product.PlanningAttribute2Value,:context.o9Product.PlanningAttribute3,:context.o9Product.PlanningAttribute3Value) ]]>
</sql>
<assign name="Set Batch Relationship" property="context.o9Product.%ParentBatch" value="context.o9ProductBatch" action="set" xpos='200' ypos='450' />
</foreach>
<call name='Initiate Batch Rollover' target='ToO9ProductCSV' async='1' xpos='200' ypos='537' >
<request type='UST.o9.RecordMap.ProductBatch' >
<assign property="callrequest" value="context.o9ProductBatch" action="set" />
<assign property="callrequest.%Source" value="&quot;md_product_s4_&quot;_$PIECE(request.%Source,&quot;_&quot;,5,7)" action="set" />
</request>
<response type='Ens.Response' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</false>
</if>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
