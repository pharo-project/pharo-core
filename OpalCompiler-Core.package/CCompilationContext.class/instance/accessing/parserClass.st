parserClass
	^ parserClass ifNil: [ parserClass := RBExplicitVariableParser ]