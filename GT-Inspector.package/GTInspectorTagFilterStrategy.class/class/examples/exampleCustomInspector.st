exampleCustomInspector
	"An inspector showing only the custom presentations for all object (excluding Raw and Meta)."
	|inspector|
	
	inspector := GTInspector new.
	inspector presentationFilter: (GTInspectorTagFilterStrategy new
		defaultTag: #custom;
		addAndSelectTag: #custom).
	inspector openOn: Morph new.