mouseLeaveEvent: event fromPane: pane
	"For backward compatibility only.  Not used by any newly created window"
	(pane isKindOf: ScrollPane) ifTrue: [pane mouseLeave: event].
