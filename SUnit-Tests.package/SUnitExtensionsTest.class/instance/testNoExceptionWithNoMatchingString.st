tests
testNoExceptionWithNoMatchingString
	self shouldnt: [ Object obsolete ] raise: Error whoseDescriptionDoesNotInclude: 'NOT' description: 'tested obsoleting Object'