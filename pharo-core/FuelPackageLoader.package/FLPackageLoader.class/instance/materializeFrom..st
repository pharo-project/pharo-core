loading
materializeFrom: aStream
	| packageHeader package |
	packageHeader := (FLMaterializer newDefault materializeFrom: aStream) root.
	packageHeader executePreMaterializationActions.
	package := (FLMaterializer newDefault materializeFrom: aStream) root.	
	"We put back the header we nilled during export."
	package packageHeader: packageHeader.
	^ package