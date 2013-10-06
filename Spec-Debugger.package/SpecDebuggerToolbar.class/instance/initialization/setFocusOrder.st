setFocusOrder

	self focusOrder removeAll.
	self validButtonIds do: [ :id | 
		self focusOrder add: (self perform: id) ]