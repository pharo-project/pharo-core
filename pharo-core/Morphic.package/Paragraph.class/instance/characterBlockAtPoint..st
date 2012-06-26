selection
characterBlockAtPoint: aPoint 
	"Answer a CharacterBlock for the character in the text at aPoint."
	| line |
	line := lines at: (self lineIndexForPoint: aPoint).
	^ ((text string isWideString) ifTrue: [
		MultiCharacterBlockScanner new text: text textStyle: textStyle
	] ifFalse: [CharacterBlockScanner new text: text textStyle: textStyle])
		characterBlockAtPoint: aPoint index: nil
		in: line