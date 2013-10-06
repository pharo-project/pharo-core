mouseEnter: event
	hasFocus := true.
	owner isSystemWindow ifTrue: [owner paneTransition: event].
