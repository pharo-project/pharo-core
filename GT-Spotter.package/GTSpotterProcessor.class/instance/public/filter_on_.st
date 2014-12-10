filter: aStringQuery on: aStream
	
	allFilteredCandidates := nil.
	(aStringQuery notEmpty or: [ self wantsToDisplayOnEmptyQuery ]) ifTrue: [
		allFilteredCandidates := self doFilter: aStringQuery on: aStream ].
	aStream 
		performSymbol: #onAmountChanged:in: 
		withArguments: { self allFilteredCandidates size . self }