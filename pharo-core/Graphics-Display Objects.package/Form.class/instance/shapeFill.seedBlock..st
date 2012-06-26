filling
shapeFill: aColor seedBlock: seedBlock
	self depth > 1 ifTrue: [self error: 'This call only meaningful for B/W forms'].
	(self findShapeAroundSeedBlock: seedBlock)
		displayOn: self at: 0@0 clippingBox: self boundingBox
		rule: Form under fillColor: aColor 