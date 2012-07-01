as yet unclassified
testNoExceptionWithNoMatchingString
	self shouldnt: [ Object obsolete ] raise: Error whoseDescriptionDoesNotInclude: 'NOT' description: 'tested obsoleting Object'