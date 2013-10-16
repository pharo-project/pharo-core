dive
	^ self owner ifNotNil: [ :o | 
		"nil in case of basicInspect"
		(o respondsTo: #dive)
		"does not respond if owner is SpecDebugger"
			ifTrue: [ o dive ] ]