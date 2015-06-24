initialize 
	super initialize.
	self color: self backgroundColor.
	showColumnHeaders := true.
	selectedRowIndexes := #().
	highlightedRowIndexes := #().
	columns := #().
	self beSingleSelection.
	self enableSearch.
	self initializeScrollBars.
	self initializeContainer.
	self initializeKeyBindings.
	
	self resizeAllSubviews