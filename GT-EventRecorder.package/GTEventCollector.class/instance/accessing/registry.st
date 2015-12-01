registry
	^ registry ifNil: [ registry := GTEventRegistry new ]