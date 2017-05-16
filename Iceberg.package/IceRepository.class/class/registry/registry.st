registry
	^ Registry ifNil: [ Registry := OrderedCollection new ]