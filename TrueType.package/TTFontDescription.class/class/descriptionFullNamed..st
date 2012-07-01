instance creations
descriptionFullNamed: descriptionFullName 
	^ Descriptions
		detect: [:f | f fullName = descriptionFullName]
		ifNone: [Default]