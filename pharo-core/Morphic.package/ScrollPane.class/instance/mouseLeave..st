event handling
mouseLeave: event
	hasFocus := false.
	retractableScrollBar ifTrue: [self hideScrollBars].
	(owner isSystemWindow) ifTrue: [owner paneTransition: event]
