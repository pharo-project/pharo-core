initialize 
	handle value = 0 ifTrue: [ 
		self error: 'Error creating new path' ].

	NBExternalResourceManager addResource: self data: handle