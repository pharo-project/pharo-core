gtInspectorVariableValuePairs  
	^ Set new 
		add: ( 'tally' -> self size );
		add: ( 'array' -> self array );
		yourself
