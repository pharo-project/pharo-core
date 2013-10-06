keepScrollPositionOf: specHolder during: aBlock
	| scrollValue |
	specHolder widget 
		ifNil: [ ^ aBlock value ].
		
	scrollValue := description widget scrollValue.
	aBlock value.
	description widget scrollValue: scrollValue.