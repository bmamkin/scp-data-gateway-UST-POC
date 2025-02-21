Class UST.Production.CloudGateway Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="UST.Production.CloudGateway" TestingEnabled="true" LogGeneralTraceEvents="true">
  <Description>supply chain planning cloud gateway MVP to enable integration of demand planning data between SAP and o9</Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="FromSAPLocationCustomerCSV" Category="MDM" ClassName="EnsLib.RecordMap.Service.BatchFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
    <Setting Target="Host" Name="BatchClass">UST.SAP.RecordMap.LocationCustomerBatch</Setting>
    <Setting Target="Host" Name="BatchHandling">Whole</Setting>
    <Setting Target="Host" Name="RecordMap">UST.SAP.RecordMap.LocationCustomer</Setting>
    <Setting Target="Adapter" Name="FilePath">/Persistent/durable/data/in/</Setting>
    <Setting Target="Adapter" Name="FileSpec">md_location_customer*</Setting>
    <Setting Target="Host" Name="TargetConfigNames">LocationBPL</Setting>
  </Item>
  <Item Name="FromSAPLocationPlantCSV" Category="MDM" ClassName="EnsLib.RecordMap.Service.BatchFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/Persistent/durable/data/in/</Setting>
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
    <Setting Target="Host" Name="BatchClass">UST.SAP.RecordMap.LocationPlantBatch</Setting>
    <Setting Target="Host" Name="BatchHandling">Whole</Setting>
    <Setting Target="Host" Name="RecordMap">UST.SAP.RecordMap.LocationPlant</Setting>
    <Setting Target="Host" Name="TargetConfigNames">LocationBPL</Setting>
    <Setting Target="Adapter" Name="FileSpec">md_location_plant*</Setting>
  </Item>
  <Item Name="ToO9LocationCSV" Category="MDM" ClassName="EnsLib.RecordMap.Operation.BatchFileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="Filename">%f</Setting>
    <Setting Target="Host" Name="RecordMap">UST.o9.RecordMap.Location</Setting>
    <Setting Target="Adapter" Name="FilePath">/Persistent/durable/data/out/</Setting>
    <Setting Target="Host" Name="AlertOnError">1</Setting>
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
  </Item>
  <Item Name="LocationBPL" Category="MDM" ClassName="UST.BPL.LocationBPL" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="AlertOnError">1</Setting>
    <Setting Target="Host" Name="RuleLogging">a</Setting>
  </Item>
  <Item Name="ProductBPL" Category="MDM" ClassName="UST.BPL.ProductBPL" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="AlertOnError">1</Setting>
    <Setting Target="Host" Name="RuleLogging">a</Setting>
  </Item>
  <Item Name="FromSAPProductCSV" Category="MDM" ClassName="EnsLib.RecordMap.Service.BatchFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="AlertOnError">1</Setting>
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
    <Setting Target="Host" Name="BatchClass">UST.SAP.RecordMap.ProductBatch</Setting>
    <Setting Target="Host" Name="BatchHandling">Whole</Setting>
    <Setting Target="Host" Name="RecordMap">UST.SAP.RecordMap.Product</Setting>
    <Setting Target="Host" Name="TargetConfigNames">ProductBPL</Setting>
    <Setting Target="Adapter" Name="FilePath">/Persistent/durable/data/in/</Setting>
    <Setting Target="Adapter" Name="FileSpec">md_product*</Setting>
  </Item>
  <Item Name="ToO9ProductCSV" Category="MDM" ClassName="EnsLib.RecordMap.Operation.BatchFileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="AlertOnError">1</Setting>
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
    <Setting Target="Host" Name="Filename">%f</Setting>
    <Setting Target="Host" Name="RecordMap">UST.o9.RecordMap.Product</Setting>
    <Setting Target="Adapter" Name="FilePath">/Persistent/durable/data/out/</Setting>
  </Item>
  <Item Name="ToO9SalesOrderHeaderCSV" Category="TD" ClassName="EnsLib.RecordMap.Operation.BatchFileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="AlertOnError">1</Setting>
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
    <Setting Target="Host" Name="DefaultBatchClass"></Setting>
    <Setting Target="Host" Name="Filename">%f</Setting>
    <Setting Target="Host" Name="RecordMap">UST.o9.RecordMap.SalesOrderHeader</Setting>
    <Setting Target="Adapter" Name="FilePath">/Persistent/durable/data/out/</Setting>
    <Setting Target="Host" Name="UseDefaultBatch">0</Setting>
  </Item>
  <Item Name="SalesOrderBPL" Category="TD" ClassName="UST.BPL.SalesOrderBPL" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="AlertOnError">1</Setting>
    <Setting Target="Host" Name="RuleLogging">a</Setting>
  </Item>
  <Item Name="FromSAPSalesOrderCSV" Category="TD" ClassName="EnsLib.RecordMap.Service.BatchFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/Persistent/durable/data/in/</Setting>
    <Setting Target="Host" Name="AlertOnError">1</Setting>
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
    <Setting Target="Host" Name="BatchClass">UST.SAP.RecordMap.SalesOrderBatch</Setting>
    <Setting Target="Host" Name="BatchHandling">Whole</Setting>
    <Setting Target="Host" Name="RecordMap">UST.SAP.RecordMap.SalesOrder</Setting>
    <Setting Target="Host" Name="TargetConfigNames">SalesOrderBPL</Setting>
    <Setting Target="Adapter" Name="FileSpec">td_salesorder_s4*</Setting>
  </Item>
  <Item Name="FromSAPSalesOrderLineCSV" Category="TD" ClassName="EnsLib.RecordMap.Service.BatchFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="AlertOnError">1</Setting>
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
    <Setting Target="Host" Name="BatchClass">UST.SAP.RecordMap.SalesOrderLineBatch</Setting>
    <Setting Target="Host" Name="BatchHandling">Whole</Setting>
    <Setting Target="Host" Name="RecordMap">UST.SAP.RecordMap.SalesOrderLine</Setting>
    <Setting Target="Adapter" Name="FilePath">/Persistent/durable/data/in/</Setting>
    <Setting Target="Adapter" Name="FileSpec">td_salesorderline_s4*</Setting>
    <Setting Target="Host" Name="TargetConfigNames">SalesOrderLineBPL</Setting>
  </Item>
  <Item Name="ToO9SalesOrderRequestCSV" Category="TD" ClassName="EnsLib.RecordMap.Operation.BatchFileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="AlertOnError">1</Setting>
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
    <Setting Target="Host" Name="Filename">%f</Setting>
    <Setting Target="Host" Name="RecordMap">UST.o9.RecordMap.SalesOrderRequest</Setting>
    <Setting Target="Adapter" Name="FilePath">/Persistent/durable/data/out/</Setting>
  </Item>
  <Item Name="SalesOrderLineBPL" Category="TD" ClassName="UST.BPL.SalesOrderLineBPL" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="AlertOnError">1</Setting>
    <Setting Target="Host" Name="RuleLogging">a</Setting>
  </Item>
  <Item Name="ToO9SalesOrderCommitCSV" Category="TD" ClassName="EnsLib.RecordMap.Operation.BatchFileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="AlertOnError">1</Setting>
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
    <Setting Target="Host" Name="Filename">%f</Setting>
    <Setting Target="Host" Name="RecordMap">UST.o9.RecordMap.SalesOrderCommit</Setting>
    <Setting Target="Adapter" Name="FilePath">/Persistent/durable/data/out/</Setting>
  </Item>
  <Item Name="SalesShipmentLineBPL" Category="TD" ClassName="UST.BPL.SalesShipmentLineBPL" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="AlertOnError">1</Setting>
    <Setting Target="Host" Name="RuleLogging">a</Setting>
  </Item>
  <Item Name="FromSAPSalesShipmentLineCSV" Category="TD" ClassName="EnsLib.RecordMap.Service.BatchFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="AlertOnError">1</Setting>
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
    <Setting Target="Host" Name="BatchClass">UST.SAP.RecordMap.SalesShipmentLineBatch</Setting>
    <Setting Target="Host" Name="BatchHandling">Whole</Setting>
    <Setting Target="Host" Name="RecordMap">UST.SAP.RecordMap.SalesShipmentLine</Setting>
    <Setting Target="Host" Name="TargetConfigNames">SalesShipmentLineBPL</Setting>
    <Setting Target="Adapter" Name="FilePath">/Persistent/durable/data/in/</Setting>
    <Setting Target="Adapter" Name="FileSpec">td_salesshipmentline*</Setting>
  </Item>
</Production>
}

}
