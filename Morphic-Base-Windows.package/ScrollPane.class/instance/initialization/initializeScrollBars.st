initializeScrollBars
	"initialize the receiver's scrollBar"

	(scrollBar := ScrollBar new model: self accessor: #vScrollBarValue)
		borderWidth: 1;
		borderColor: Color black.
	(hScrollBar := ScrollBar new model: self accessor: #hScrollBarValue)
		borderWidth: 1;
		borderColor: Color black.
	self initializeScroller.
	retractableScrollBar
		ifFalse: [ 
			self
				addMorph: scrollBar;
				addMorph: hScrollBar ].
	self alwaysShowVScrollbar
		ifTrue: [ self alwaysShowVScrollBar: true ].
	self alwaysHideHScrollbar
		ifTrue: [ self hideHScrollBarIndefinitely: true ]
		ifFalse: [ 
			self alwaysShowHScrollbar
				ifTrue: [ self alwaysShowHScrollBar: true ] ]