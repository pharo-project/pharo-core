browseSendersOf: aSelector name: labelString autoSelect: autoSelectString
	
	^ self
		browseMessageList: (self allCallsOn: aSelector)
		name: labelString
		autoSelect: autoSelectString
		refreshingBlock: [ :method | | specialFlag specialByte |
			specialFlag := Smalltalk 
				hasSpecialSelector: aSelector
				ifTrueSetByte: [ :b | specialByte := b ].
			(method refersToLiteral: aSelector)
				or: [ specialFlag
						and: [ method scanFor: specialByte ]]]