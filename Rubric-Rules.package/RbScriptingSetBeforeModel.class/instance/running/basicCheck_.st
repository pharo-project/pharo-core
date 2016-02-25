basicCheck: anAST 

	anAST nodesDo: [ :node |
		node isMessage ifTrue: [ 
			node selector = #model: ifTrue: [ ^ false ].
			node selector = #beForSmalltalkScripting ifTrue: [ ^ true ] ] ].

	^ false