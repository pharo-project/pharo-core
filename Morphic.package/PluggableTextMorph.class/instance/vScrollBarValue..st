scroll bar events
vScrollBarValue: scrollValue
	super vScrollBarValue: scrollValue.
	textMorph ifNotNil: [textMorph selectionChanged].
	self triggerEvent: #vScroll with: scrollValue