checkIsArgumentDefinition: aNode

	^ aNode isArgument and: [ aNode parent isMethod ]