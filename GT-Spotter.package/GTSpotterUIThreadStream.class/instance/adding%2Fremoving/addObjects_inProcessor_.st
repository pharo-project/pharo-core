addObjects: aCollection inProcessor: aProcessor

	self performSymbol: #addAllCandidates:in: withArguments: { aCollection . aProcessor }