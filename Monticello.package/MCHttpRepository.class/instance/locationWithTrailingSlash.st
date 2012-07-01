actions
locationWithTrailingSlash
	^ (location endsWith: '/')
		ifTrue: [location]
		ifFalse: [location, '/']