/// RECORDMAP: Modified during compilation of RecordMap 'UST.o9.RecordMap.Product'
/// on 2024-03-22 at 20:16:52.076 [2024-03-22 20:16:52.076 UTC]
/// by user bmamkin
Class UST.o9.RecordMap.Product Extends EnsLib.RecordMap.RecordMap
{

Parameter OBJECTNAME = "UST.o9.RecordMap.Product.Record";

/// THIS IS GENERATED CODE. DO NOT EDIT.<br/>
/// Method to retrieve a record from a stream or device. This method will be generated based on the
/// structure of the RecordMap. For testing purposes, a file name may be passed in the pStream argument.
ClassMethod GetObject(pStream As %IO.DeviceStream, Output pObject As %RegisteredObject, pTimeout As %Numeric = -1, ByRef pLookAhead As %String = "", pLabelFound As %Boolean = 0) As %Status
{
	Try {
		Set tStatus = $$$OK
		Set pObject = $$$NULLOREF
		If '$IsObject(pStream) {
			Set tFilename = pStream
			Set pStream = ##class(%IO.FileStream).%New()
			Do pStream.Open(tFilename,,pTimeout,"UTF-8", .tStatus)
			If $$$ISERR(tStatus) Quit
		}
		Set tObjectName = $parameter($this,"OBJECTNAME")
		Set tObject = $classmethod(tObjectName,"%New")
		If '$IsObject(tObject) {
			Set tStatus = $$$ERROR($$$CannotCreateObject,tObjectName)
			Quit
		}
		Set tObject.%Source = pStream.Name
		Set tGetTopFields = $parameter(tObject,"INCLUDETOPFIELDS")
		If pStream.AtEnd && (""=pLookAhead) {
			Set tStatus = $$$ERROR($$$EnsRecordMapErrStreamAtEnd, pStream.Name)
			Quit
		}
		Set pStream.CharEncoding = "UTF-8"

		#; Parse incoming stream
		Set tStatus = ..GetRecord(pStream, tObject, tGetTopFields, pTimeout, .pLookAhead, pLabelFound)
		If $$$ISERR(tStatus) Quit
	}
	Catch ex {
		Set tStatus = ex.AsStatus()
	}
	If $$$ISERR(tStatus) { Set pObject = $$$NULLOREF }
	Else { Set pObject = tObject }
	Quit tStatus
}

/// THIS IS GENERATED CODE. DO NOT EDIT.<br/>
/// Method to write a record to a stream or device. This method will be generated based on the
/// structure of the RecordMap. For testing purposes, a file name may be passed in the pStream argument.
ClassMethod PutObject(pStream As %IO.DeviceStream, pObject As %RegisteredObject, pFlush As %Boolean = 1, ByRef pPadArray As %String) As %Status
{
	Try {
		Set tStatus = $$$OK
		If '$IsObject(pStream) {
			Set tFilename = pStream
			Set pStream = ##class(%IO.FileStream).%New()
			Do pStream.Open(tFilename,"WAE",,"UTF-8", .tStatus)
			If $$$ISERR(tStatus) Quit
		}
		Set tHasTopFields = $parameter(pObject,"INCLUDETOPFIELDS")
		Set pStream.CharEncoding = "UTF-8"

		Set tStatus = ..PutRecord(pStream, pObject, tHasTopFields, .pPadArray)
		If $$$ISERR(tStatus) Quit
		If pFlush Do pStream.Flush(.tStatus)
		If $$$ISERR(tStatus) Quit
	}
	Catch ex {
		Set tStatus = ex.AsStatus()
	}
	Quit tStatus
}

/// THIS IS GENERATED CODE. DO NOT EDIT.<br/>
/// Internal helper method to perform parse of incoming data
ClassMethod GetRecord(pStream As %IO.DeviceStream, pObject As %RegisteredObject, pGetTopFields As %Boolean, pTimeout As %Numeric, ByRef pLookAhead As %String = "", pLabelFound As %Boolean = 0) As %Status [ Internal, Private ]
{
	Set tStatus = $$$OK
	If pLabelFound { Set tRecLabel = "" } 
	Else { Set tRecLabel = "" } 
	Set tStatus = ..chunkRecord(pStream, .tRecordData, .tCharCount, "", pTimeout, $char(13,10), tRecLabel, .pLookAhead, "", 0)
	If $$$ISERR(tStatus) Quit tStatus
	Set tMaxLocal = $$$MaxLocalLength
	Set tRecordData("charcount") = +$get(tCharCount)
	Set tCurrChunk = 1
	Set tTopPiece = 1
	Set tCurrSep = 1
	Set tStrings = 1
	Set tCurrString = ""
	Set tSeps = $listbuild($char(44))
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Else {
		Set tCurrString = tRecordData(tCurrChunk)
		Set tCurrPiece = 1
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.UID = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.Item = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.ItemType = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.MaterialGroup = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.ItemDescription = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.BaseUOM = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.PlanningItem = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.Division = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.ExternalMaterialGroup = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.SizeDimensions = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.TransportationGroup = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.HierarchyAttribute = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.ItemIntroDate = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.ItemDiscDate = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.MaterialCategory = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.CreationDate = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.CreatedBy = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.ChangeDate = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.ChangedBy = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.Brand = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.PlanningAttribute1 = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.PlanningAttribute1Value = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.PlanningAttribute2 = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.PlanningAttribute2Value = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.PlanningAttribute3 = tCurrString
	}
	If '$data(tRecordData(tCurrChunk, "block")) {
		Set tCurrString = $piece(tRecordData(tCurrChunk), $char(44), tTopPiece)
	}
	Do ..checkMerge(.tCurrChunk, .tRecordData, .tCurrString, $char(44), .tTopPiece)
	If pGetTopFields {
		Set pObject.PlanningAttribute3Value = tCurrString
	}
	Quit tStatus
}

/// THIS IS GENERATED CODE. DO NOT EDIT.<br/>
/// Internal helper method to output object to a stream
ClassMethod PutRecord(pStream As %IO.DeviceStream, pObject As %RegisteredObject, pHasTopFields As %Boolean, ByRef pPadArray As %String) As %Status [ Internal, Private ]
{
	Set tStatus = $$$OK
	Set tmpStream=##class(%Stream.TmpBinary).%New()
	Do tmpStream.Write($select(pHasTopFields: pObject.UID,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.Item,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.ItemType,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.MaterialGroup,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.ItemDescription,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.BaseUOM,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.PlanningItem,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.Division,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.ExternalMaterialGroup,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.SizeDimensions,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.TransportationGroup,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.HierarchyAttribute,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.ItemIntroDate,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.ItemDiscDate,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.MaterialCategory,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.CreationDate,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.CreatedBy,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.ChangeDate,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.ChangedBy,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.Brand,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.PlanningAttribute1,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.PlanningAttribute1Value,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.PlanningAttribute2,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.PlanningAttribute2Value,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.PlanningAttribute3,1: ""))
	Do tmpStream.Write($char(44) _ $select(pHasTopFields: pObject.PlanningAttribute3Value,1: ""))
	Set tStatus = tmpStream.Write($char(13,10))
	If $$$ISERR(tStatus) Quit tStatus
	Do pStream.CopyFrom(tmpStream,,0,.tStatus)
	Quit tStatus
}

ClassMethod GetGeneratedClasses(Output pClasses As %String) As %Status
{
	Kill pClasses
	Set pClasses("UST.o9.RecordMap.Product.Record")=""
	Set pClasses("UST.o9.RecordMap.ProductBatch")=""
	Set pClasses($classname())=""
	Quit $$$OK
}

ClassMethod getIdentifier() As %String [ CodeMode = expression ]
{
""
}

ClassMethod getType() As EnsLib.RecordMap.Model.DataType.RecordType [ CodeMode = expression ]
{
"delimited"
}

XData RecordMap [ XMLNamespace = "http://www.intersystems.com/Ensemble/RecordMap" ]
{
<Record xmlns="http://www.intersystems.com/Ensemble/RecordMap" name="UST.o9.RecordMap.Product" type="delimited" char_encoding="UTF-8" targetClassname="UST.o9.RecordMap.Product.Record" batchClass="UST.o9.RecordMap.ProductBatch" complexBatchManaged="0" padFromLeft="0" recordTerminator="\x0d\x0a" allowEmbeddedRecordTerminator="0" allowEarlyTerminator="0">
  <Separators>
    <Separator>,</Separator>
  </Separators>
  <Field name="UID" required="0" ignored="0" datatype="%String" params="MAXLEN=40" repeating="0">
  </Field>
  <Field name="Item" required="0" ignored="0" datatype="%String" params="MAXLEN=40" repeating="0">
  </Field>
  <Field name="ItemType" required="0" ignored="0" datatype="%String" params="MAXLEN=4" repeating="0">
  </Field>
  <Field name="MaterialGroup" required="0" ignored="0" datatype="%String" params="MAXLEN=9" repeating="0">
  </Field>
  <Field name="ItemDescription" required="0" ignored="0" datatype="%String" params="MAXLEN=40" repeating="0">
  </Field>
  <Field name="BaseUOM" required="0" ignored="0" datatype="%String" params="MAXLEN=3" repeating="0">
  </Field>
  <Field name="PlanningItem" required="0" ignored="0" datatype="%String" params="MAXLEN=48" repeating="0">
  </Field>
  <Field name="Division" required="0" ignored="0" datatype="%String" params="MAXLEN=2" repeating="0">
  </Field>
  <Field name="ExternalMaterialGroup" required="0" ignored="0" datatype="%String" params="MAXLEN=18" repeating="0">
  </Field>
  <Field name="SizeDimensions" required="0" ignored="0" datatype="%String" params="MAXLEN=32" repeating="0">
  </Field>
  <Field name="TransportationGroup" required="0" ignored="0" datatype="%String" params="MAXLEN=4" repeating="0">
  </Field>
  <Field name="HierarchyAttribute" required="0" ignored="0" datatype="%String" params="MAXLEN=18" repeating="0">
  </Field>
  <Field name="ItemIntroDate" required="0" ignored="0" datatype="%String" repeating="0">
  </Field>
  <Field name="ItemDiscDate" required="0" ignored="0" datatype="%String" repeating="0">
  </Field>
  <Field name="MaterialCategory" required="0" ignored="0" datatype="%String" params="MAXLEN=2" repeating="0">
  </Field>
  <Field name="CreationDate" required="0" ignored="0" datatype="%String" repeating="0">
  </Field>
  <Field name="CreatedBy" required="0" ignored="0" datatype="%String" params="MAXLEN=12" repeating="0">
  </Field>
  <Field name="ChangeDate" required="0" ignored="0" datatype="%String" repeating="0">
  </Field>
  <Field name="ChangedBy" required="0" ignored="0" datatype="%String" params="MAXLEN=12" repeating="0">
  </Field>
  <Field name="Brand" required="0" ignored="0" datatype="%String" params="MAXLEN=4" repeating="0">
  </Field>
  <Field name="PlanningAttribute1" required="0" ignored="0" datatype="%String" params="MAXLEN=10" repeating="0">
  </Field>
  <Field name="PlanningAttribute1Value" required="0" ignored="0" datatype="%String" params="MAXLEN=70" repeating="0">
  </Field>
  <Field name="PlanningAttribute2" required="0" ignored="0" datatype="%String" params="MAXLEN=10" repeating="0">
  </Field>
  <Field name="PlanningAttribute2Value" required="0" ignored="0" datatype="%String" params="MAXLEN=70" repeating="0">
  </Field>
  <Field name="PlanningAttribute3" required="0" ignored="0" datatype="%String" params="MAXLEN=10" repeating="0">
  </Field>
  <Field name="PlanningAttribute3Value" required="0" ignored="0" datatype="%String" params="MAXLEN=70" repeating="0">
  </Field>
</Record>
}

}
