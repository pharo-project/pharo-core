height

	^ self items isEmpty
		ifTrue: [ 0 ]
		ifFalse: [ self defaultBreadcrumbHeight ]