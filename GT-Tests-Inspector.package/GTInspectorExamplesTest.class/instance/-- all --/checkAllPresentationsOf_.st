checkAllPresentationsOf: exampleToTest
	| browser window pragmas |
	pragmas := Pragma allNamed: #gtInspectorPresentationOrder: from: exampleToTest class to: Object.
	^ pragmas
		do: [ :eachPragma | 
			browser := GLMWrapper new.
			[browser
				show: [ :composite | 
					(eachPragma selector findTokens: $:) size = 1
						ifTrue: [ exampleToTest perform: eachPragma selector with: composite ].
					(eachPragma selector findTokens: $:) size = 2
						ifTrue: [ exampleToTest perform: eachPragma selector with: composite with: browser ] ].
			window := browser openOn: exampleToTest] 
				on: Error 
				do: [ self fail: eachPragma asString ].
			window ifNotNil: [ window delete ] ]