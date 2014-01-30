initializeWidgets

	text := self newText.
	viewer := self instantiate: ProtocolViewer.
	
	text aboutToStyle: true.

	self focusOrder 
		add: viewer;
		add: text