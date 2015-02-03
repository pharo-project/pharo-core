updateWidthPercentage
	
	self subbricks ifEmpty: [ ^ self ].
	self subbricks do: [ :each | each layoutProperties horizontalPercent: (100 / self subbricksCount) ]