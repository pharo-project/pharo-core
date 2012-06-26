protocol
setRefreshingBlockForSendersOf: aSelector
	| specialFlag specialByte |
	
	specialFlag := Smalltalk 
				hasSpecialSelector: aSelector
				ifTrueSetByte: [ :b | specialByte := b ].

	self refreshingBlock: [:method | (method refersToLiteral: aSelector) or: [ specialFlag and: [ method scanFor: specialByte ]]]