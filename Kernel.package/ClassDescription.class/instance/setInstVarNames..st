private
setInstVarNames: instVarArray
	"Private - for class initialization only"
	| required |
	required := self instSize.
	superclass notNil ifTrue:[required := required - superclass instSize].
	instVarArray size = required
		ifFalse:[^self error: required printString, ' instvar names are required'].
	instVarArray isEmpty
		ifTrue:[instanceVariables := nil]
		ifFalse:[instanceVariables := instVarArray asArray].