exampleFullInspector
	"An inspector showing all the available presentations for all objects."
	|inspector|
	
	inspector := GTInspector new.
	inspector presentationFilter: (GTInspectorTagFilterStrategy new
		defaultTag: #custom;
		addAndSelectTag: #custom;
		addAndSelectAllTags).
	inspector openOn: Morph new.