fromString: aString
	"for HTML color spec: #FFCCAA or white/black"
	"Color fromString: '#FFCCAA'.
	 Color fromString: 'orange'"
	
	| aColorHex  namedColor |
	aString isEmptyOrNil ifTrue: [ ^self white ].
	
	aColorHex := aString first = $#
		ifTrue: [ aString allButFirst ]
		ifFalse: [ aString ].
		
	"try to match aColorHex with known named colors, case insensitive."
	namedColor := self registeredColorNames detect:[:each| each sameAs: aColorHex ] ifNone: nil .
	namedColor notNil ifTrue:[ ^ self named: namedColor ].
	
	(aColorHex size = 6 and: [ aColorHex allSatisfy: [ :character | '0123456789ABCDEFabcdef' includes: character ] ])
		ifTrue: [ ^self fromHexString: aColorHex ]
		ifFalse: [ ^self white ]