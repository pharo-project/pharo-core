guessWithRoelTyper: aString class: aClass 
	| typeCollector typeClass typeInfo types type |
	typeCollector := Smalltalk classNamed: #TypeCollector.
	typeCollector ifNil: [ ^ nil ].
	typeClass := aClass whichClassDefinesInstVar: aString.
	typeClass ifNil: [ ^ nil ].
	typeInfo := (typeCollector typeInstvarsOfClass: typeClass)
		at: aString asSymbol
		ifAbsent: [ ^ nil ].
	types := typeInfo types size <= 2
		ifTrue: [ typeInfo types ]
		ifFalse: [ typeInfo types intersection: typeInfo assignments ].
	type := types isEmpty
		ifFalse: [ self findCommonSuperclass: types ].
	^ type == Object 
		ifFalse: [ type ]