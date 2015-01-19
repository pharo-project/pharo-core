exampleBasicInspector
	"An inspector showing only the basic presentations Raw and Meta for all object."
	|inspector|
	
	inspector := GTInspector new.
	inspector presentationFilter: (GTInspectorTagFilterStrategy new
		addAndSelectTag: #basic).
	inspector openOn: Morph new.