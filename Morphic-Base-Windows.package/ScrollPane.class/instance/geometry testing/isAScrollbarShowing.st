isAScrollbarShowing
	"Return true if a either retractable scroll bar is currently showing"
	retractableScrollBar ifFalse:[^true].
	^self hIsScrollbarShowing or: [self vIsScrollbarShowing]
