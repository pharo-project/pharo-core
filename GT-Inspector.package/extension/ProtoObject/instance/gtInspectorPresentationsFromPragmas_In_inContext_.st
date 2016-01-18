gtInspectorPresentationsFromPragmas: aCollection In: composite inContext: aGTInspector

	aCollection
		do: [ :eachPragma | 
			eachPragma selector numArgs = 0
				ifTrue: [ 
					| configurationProvider |
					configurationProvider := self perform: eachPragma selector.
					configurationProvider glmPresentation cull: composite cull: aGTInspector cull: self ].
			eachPragma selector numArgs = 1
				ifTrue: [ 
					thisContext 
						object: self 
						perform: eachPragma selector 
						withArguments: { composite } 
						inClass: self class ].
			eachPragma selector numArgs = 2
				ifTrue: [ 
					thisContext 
						object: self 
						perform: eachPragma selector 
						withArguments: { composite . aGTInspector } 
						inClass: self class ] ]