checkMethod: aContext 
	| hasBool hasSelf |
	hasBool := false.
	hasSelf := aContext compiledMethod parseTree lastIsReturn not.
	(matcher executeTree: aContext compiledMethod parseTree initialAnswer: Set new) do: [ :each | 
		hasBool := hasBool 
			or: [ (each isLiteralNode and: [ #(true false) includes: each value ]) 
			or: [ (each isMessage and: [ #(and: or:) includes: each selector ]) ] ].
		hasSelf := hasSelf
			or: [ (each isVariable and: [ each name = 'self' ]) 
			or: [ (each isLiteralNode and: [ (#(true false) includes: each value) not ]) ] ] ].
	(hasSelf and: [ hasBool ]) 
		ifTrue: [ result addClass: aContext selectedClass selector: aContext selector ]