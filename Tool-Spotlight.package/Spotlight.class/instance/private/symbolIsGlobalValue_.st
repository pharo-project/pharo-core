symbolIsGlobalValue: symbol
	^Smalltalk globals 
		at: symbol
		ifPresent: [ :val | val isBehavior not and: [ val isTrait not] ]
		ifAbsent: [ false ]