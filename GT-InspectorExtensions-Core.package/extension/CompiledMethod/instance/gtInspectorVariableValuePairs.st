gtInspectorVariableValuePairs
	| literalIndex |
	literalIndex := 0.
	^ Set new 
		add: ( 'header' -> self headerDescription );
		addAll: ( self literals collect: [ :aLiteral | 'literal', ( literalIndex := literalIndex + 1 ) asString -> aLiteral ] );
		add: ( 'all bytecodes' -> self symbolic );
		yourself
