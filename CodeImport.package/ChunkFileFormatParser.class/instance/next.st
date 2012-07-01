testing
next
	"If the char we read previously is a terminator mark, it is scaping the next one, so we skip it"
	nextChar = self terminatorMark 
		ifTrue: [ readStream next ].
	^nextChar