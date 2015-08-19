endSwipe: anEvent
	laraPosition := laraPosition abs
		> (self defaultExtent x / 2)
		ifTrue: [ 0 ]
		ifFalse: [ self defaultExtent x ]