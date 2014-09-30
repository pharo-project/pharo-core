testEachPresentation

	| pragmas objectToTest browser window |

	objectToTest := self objectToTest.
	pragmas := Pragma 
				allNamed: #gtInspectorPresentationOrder: 
				from: objectToTest class 
				to: Object 
				sortedUsing: [: x :y | (x argumentAt: 1) < (y argumentAt: 1)].
	pragmas do: [ :eachPragma | 
		browser := GLMWrapper new.
		browser show: [:composite | 
			(eachPragma selector findTokens: $:) size = 1 
			ifTrue: [ objectToTest perform: eachPragma selector with: composite ]. 
		(eachPragma selector findTokens: $:) size = 2
			ifTrue: [ objectToTest perform: eachPragma selector with: composite with: browser ] ].
		window := browser openOn: objectToTest.
		windows add: window ]