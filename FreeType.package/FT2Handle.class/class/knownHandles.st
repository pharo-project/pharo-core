private-handle registry
knownHandles
	^ KnownHandles ifNil: [ KnownHandles := WeakSet new ]