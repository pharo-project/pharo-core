basicContinueFilterInContext: aSpotterContext

	" we DO NOT prepare the context since we could no longer continue producing filtered candidates "
	(self shouldFilterInContext: aSpotterContext) ifTrue: [
		allFilteredCandidates := self doContinueFilterInContext: aSpotterContext ].
	aSpotterContext stream 
		performSymbol: #onAmountChanged:in:
		withArguments: { self allFilteredCandidates size . self }