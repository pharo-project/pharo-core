tests instance creation
testInstanceCreation

	self should: [ Character value: -1] raise: Error.
	
	self shouldnt: [Character value: 0] raise: Error.
	self shouldnt: [Character value: 256] raise: Error