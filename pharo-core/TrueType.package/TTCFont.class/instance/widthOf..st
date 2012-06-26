public
widthOf: aCharacter
	"This method cannot use #formOf: because formOf: discriminates the color and causes unnecessary bitmap creation."
	aCharacter charCode > 255 ifTrue: [
		fallbackFont ifNotNil: [^ fallbackFont widthOf: aCharacter].
		^ 1
	].
	^(self formOf: aCharacter) width