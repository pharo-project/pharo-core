exampleExampleBrowser
	"A browser for viewing examples"
	|inspector|
	
	inspector := GTInspector new.
	inspector presentationFilter: (GTInspectorTagFilterStrategy new
		addAndSelectTag: #examples).
	inspector openOn: Dictionary.