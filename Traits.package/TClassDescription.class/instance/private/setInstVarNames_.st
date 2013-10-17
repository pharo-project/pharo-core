setInstVarNames: instVarArray
	"Private - for class initialization only"
	| required |
	required := self instSize.
	self superclass notNil ifTrue:[required := required - self superclass instSize].
	instVarArray size = required
		ifFalse:[^self error: required printString, ' instvar names are required'].
	instVarArray isEmpty
		ifTrue:[self instanceVariables: nil]
		ifFalse:[self instanceVariables: instVarArray asArray].