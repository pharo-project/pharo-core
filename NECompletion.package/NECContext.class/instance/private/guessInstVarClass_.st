guessInstVarClass: aSHRange 
	| aClass name |
	name := self sourceOf: aSHRange.
	aClass := controller guessTypeFor: name.
	aClass ifNotNil: [ ^ aClass ].
	aClass := self 
		guessWithRoelTyper: name
		class: theClass.
	aClass ifNotNil: [ ^ aClass ].
	^ (NECInstVarTypeGuesser 
		variableName: name
		class: theClass) perform