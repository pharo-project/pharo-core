event handling
mouseUp: evt
	self isWorldMorph ifTrue:[self removeAlarm: #invokeWorldMenu:].
	super mouseUp: evt.