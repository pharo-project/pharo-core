as yet unclassified
descriptionNamed: descriptionName

	^ TTCDescriptions detect: [:f | f first name = descriptionName] ifNone: [TTCDefault].
