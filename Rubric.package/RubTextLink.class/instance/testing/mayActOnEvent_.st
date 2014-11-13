mayActOnEvent: anEvent
	^ anEvent isMouseDown and: [ anEvent commandKeyPressed ]