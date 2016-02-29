basicCheck: anAST 

	anAST nodesDo: [ :node |
		node isMessage ifTrue: [ 
			node selector = #model: ifTrue: [ ^ false ].
			(self scriptingMethods includes: node selector) ifTrue: [ ^ true ] ] ].

	^ false