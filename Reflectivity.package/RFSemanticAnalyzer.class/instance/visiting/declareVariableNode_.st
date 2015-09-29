declareVariableNode: aVariableNode
	| name var |
	"we do not shadow, we reuse"
	name := aVariableNode name.
	var := scope lookupVarForDeclaration: name.
	var ifNil: [ 
			"new var"
			var := scope addTemp: name ].
	aVariableNode binding: var.
	^ var