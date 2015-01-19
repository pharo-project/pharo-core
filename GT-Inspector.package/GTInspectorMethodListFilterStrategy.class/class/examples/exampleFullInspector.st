exampleFullInspector
	"An inspector showing all presentations for all objects"
	|inspector|
	
	inspector := GTInspector new.
	inspector presentationFilter: (GTInspectorMethodListFilterStrategy new
		addAndSelectAllSignatures).
	inspector openOn: Morph new.