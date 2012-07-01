as yet unclassified
testExceptionWithoutMatchingString
	self should: [ Object obsolete ] raise: Error whoseDescriptionDoesNotInclude: 'Zero' description: 'tested obsoleting Object'