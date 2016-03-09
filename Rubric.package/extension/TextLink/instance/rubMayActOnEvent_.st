rubMayActOnEvent: anEvent
	^ anEvent isMouseDown and: [ anEvent commandKeyPressed ]