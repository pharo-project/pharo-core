gtInspectorVariableValuePairs
	| literalIndex |
	literalIndex := 0.
	^ OrderedCollection new 
		add: ( 'all bytecodes' -> self symbolic );
		add: ( 'header' -> self headerDescription );
		addAll: ( self literals collect: [ :aLiteral | 'literal ', ( literalIndex := literalIndex + 1 ) asString -> aLiteral ] );
		yourself
