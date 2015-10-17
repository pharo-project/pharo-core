checkAllPresentationsOf: exampleToTest
	| browser window |
	(Pragma allNamed: #gtInspectorPresentationOrder: from: exampleToTest class to: Object) do: [ :eachPragma | 
		browser := GLMWrapper new.
		[	browser
				show: [ :composite | 
					(eachPragma selector findTokens: $:) size = 1
						ifTrue: [ exampleToTest perform: eachPragma selector with: composite ].
					(eachPragma selector findTokens: $:) size = 2
						ifTrue: [ exampleToTest perform: eachPragma selector with: composite with: browser ] ].
			window := browser openOn: exampleToTest ] 
				on: Error 
				do: [
					window ifNotNil: [ window delete ].
					self fail: (eachPragma method gtDisplayString, ' for ', exampleToTest gtDisplayString)  ].
		window ifNotNil: [ window delete ] ]