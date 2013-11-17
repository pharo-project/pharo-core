declareVariableNode: aVariableNode
	| name var |
	name := aVariableNode name.
	var := scope lookupVarForDeclaration: name.
	var
		ifNotNil: [ 
			self variable: aVariableNode shadows: var.
			(var scope ~= scope)
				ifTrue: [ 
					"Create new var that shadows outer one"
					var := scope addTemp: name ]
				]
		ifNil: [ 
			"new var"
			var := scope addTemp: name ].
	aVariableNode binding: var.
	^ var