gtDebuggerPresentationsIn: composite inContext: aGTInspector
	| pragmas |
	pragmas := (Pragma 
				allNamed: #gtDebuggerPresentationOrder: 
				from: self class 
				to: Object) asOrderedCollection.
	pragmas addAll:((Pragma 
				allNamed: #gtInspectorPresentationOrder: 
				from: self class 
				to: Object)
					reject: [:pragma| pragma method selector = #gtInspectorRawIn: ]).
	pragmas := pragmas sorted: [: x :y | (x argumentAt: 1) < (y argumentAt: 1)].
	pragmas do: [ :eachPragma | 
		(eachPragma selector findTokens: $:) size = 1 
			ifTrue: [ self perform: eachPragma selector with: composite ]. 
		(eachPragma selector findTokens: $:) size = 2
			ifTrue: [ self perform: eachPragma selector with: composite with: aGTInspector ] ]
