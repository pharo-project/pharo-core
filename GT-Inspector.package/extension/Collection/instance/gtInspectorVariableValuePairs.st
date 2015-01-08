gtInspectorVariableValuePairs
	| pairs index |
	pairs := super gtInspectorVariableValuePairs.
	index := 1.
	self do: [ :each | 
		index > 42 ifTrue: [ ^ pairs ].
		pairs add: (index asTwoCharacterString -> each).
		index := index + 1 ].
	^ pairs