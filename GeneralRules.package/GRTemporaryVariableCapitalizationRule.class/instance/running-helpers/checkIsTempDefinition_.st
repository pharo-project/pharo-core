checkIsTempDefinition: aNode

	^ aNode isTemp and: [ aNode parent isSequence ]