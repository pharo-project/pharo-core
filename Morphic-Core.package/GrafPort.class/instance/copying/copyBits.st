copyBits
	"Override copybits to do translucency if desired"

	(combinationRule >= 30 and: [combinationRule <= 31]) 
		ifTrue: [self copyBitsTranslucent: (alpha ifNil:[255])]
		ifFalse: [super copyBits]