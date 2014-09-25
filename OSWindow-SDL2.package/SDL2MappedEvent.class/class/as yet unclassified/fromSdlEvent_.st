fromSdlEvent: event
	| convertedEvent |
	convertedEvent := self new.
	NativeBoost memCopy: event to: convertedEvent address size: (self instanceSize).
	^ convertedEvent