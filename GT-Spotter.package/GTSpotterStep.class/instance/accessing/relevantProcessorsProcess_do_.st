relevantProcessorsProcess: aSpotterContext do: aBlock
	aSpotterContext text substrings 
		detect: [ :each | each beginsWith: '#' ]
		ifFound: [ :categoryQuery | 
			| categoryQueryPrefix |
			aSpotterContext text: (aSpotterContext text copyReplaceAll: categoryQuery with: '').
			categoryQueryPrefix := categoryQuery allButFirst asLowercase.
			self processors 
				select: [ :each | each title asLowercase beginsWith: categoryQueryPrefix ]
				thenDo: aBlock ]
		ifNone: [ 
			self processors do: aBlock ]