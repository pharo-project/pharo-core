api
removePackage: aString

	| spec |
	spec := 
		(self project packageSpec)
			name: aString;
			yourself.
	self root packages remove: spec.
