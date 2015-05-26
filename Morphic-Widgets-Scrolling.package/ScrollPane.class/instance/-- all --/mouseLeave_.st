mouseLeave: event
	hasFocus := false.
	owner isSystemWindow ifTrue: [owner paneTransition: event]
