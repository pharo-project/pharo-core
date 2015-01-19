initialize
	super initialize.
	
	self presentationFilter: (GTInspectorTagFilterStrategy new
			defaultTag: #custom;
			addAndSelectTag: #basic;
			addAndSelectTag: #custom;
			addAndSelectTag: #examples)