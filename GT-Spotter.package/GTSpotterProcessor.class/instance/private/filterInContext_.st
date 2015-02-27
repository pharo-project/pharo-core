filterInContext: aSpotterContext
	
	allFilteredCandidates := nil.
	(aSpotterContext notEmpty or: [ self wantsToDisplayOnEmptyQuery ]) ifTrue: [
		allFilteredCandidates := self doFilterInContext: aSpotterContext ].
	aSpotterContext stream 
		performSymbol: #onAmountChanged:in: 
		withArguments: { self allFilteredCandidates size . self }