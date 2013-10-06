whichSelectorsReferTo: literal 
	"Answer a Set of selectors whose methods access the argument as a
literal."

	| special byte |
	special := Smalltalk hasSpecialSelector: literal ifTrueSetByte: [:b |
byte := b].
	^self whichSelectorsReferTo: literal special: special byte: byte

	"Rectangle whichSelectorsReferTo: #+."