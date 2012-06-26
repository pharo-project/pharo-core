instance creations
descriptionNamed: descriptionName

	^ Descriptions detect: [:f | f name = descriptionName] ifNone: [Default].
