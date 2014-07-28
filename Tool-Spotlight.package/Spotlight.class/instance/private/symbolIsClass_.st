symbolIsClass: symbol
	^Smalltalk globals 
		at: symbol
		ifPresent: [ :val | val isBehavior or: [ val isTrait ] ]
		ifAbsent: [ false ]