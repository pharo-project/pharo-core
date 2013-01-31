api
removeGroup: aString

	| spec |
	spec := 
		(self project groupSpec)
			name: aString;
			yourself.
	self root packages remove: spec.
