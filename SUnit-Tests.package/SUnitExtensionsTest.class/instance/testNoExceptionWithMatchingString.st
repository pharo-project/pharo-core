as yet unclassified
testNoExceptionWithMatchingString
	self shouldnt: [ Object obsolete ] raise: Error whoseDescriptionIncludes: 'Zero' description: 'tested obsoleting Object'