exampleCodeBrowser
	"An inspector showing only the Meta presentation for all objects"
	|inspector|
	
	inspector := GTInspector new.
	inspector presentationFilter: (GTInspectorMethodListFilterStrategy new
		addAndSelectSignatureFor: Object>>#gtInspectorMetaIn:).
	inspector openOn: Morph new.