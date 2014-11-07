testEachPresentation

	| pragmas window browser |

	Object withAllSubclassesDo: [ :eachClass |
		eachClass gtExamples do: [ :exampleToTest |
			pragmas := Pragma 
						allNamed: #gtInspectorPresentationOrder: 
						from: exampleToTest class 
						to: Object.
			pragmas do: [ :eachPragma | 
				browser := GLMWrapper new 
					show: [:composite | 
						(eachPragma selector findTokens: $:) size = 1 
							ifTrue: [ exampleToTest perform: eachPragma selector with: composite ]. 
						(eachPragma selector findTokens: $:) size = 2
							ifTrue: [ exampleToTest perform: eachPragma selector with: composite with: browser ]].
				window := browser openOn: exampleToTest.
				windows add: window ] ] ]