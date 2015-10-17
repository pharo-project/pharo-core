allowProcessorsFrom: aMethod configuredWith: aBlock
	
	self allowProcessorsFrom: aMethod.
	configurationBlocks at: aMethod name put: aBlock.
	