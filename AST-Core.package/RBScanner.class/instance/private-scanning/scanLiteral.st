scanLiteral
	self step.
	self stripSeparators.
	characterType = #alphabetic 
		ifTrue: [ ^ self scanSymbol ].
	characterType = #binary 
		ifTrue: [ ^ (self scanBinary: RBLiteralToken) stop: self previousStepPosition ].
	currentCharacter = $' 
		ifTrue: [ ^ self scanStringSymbol ].
	(currentCharacter = $( or: [ currentCharacter = $[ ]) 
		ifTrue: [ ^ self scanLiteralArrayToken].
	"Accept some strange literals like '#1', '# species' and '##species:'"
	characterType = #digit
		ifTrue: [ ^ self scanNumber ].
	currentCharacter = $#
		ifTrue: [ ^ self scanLiteral ].
	^self scanError: 'Expecting a literal type' translated.