spotterPreviewIn: aComposite inContext: aSpotter

	| pragmas |
	pragmas := Pragma 
				allNamed: #spotterPreview: 
				from: self class 
				to: Object
				sortedUsing: [: x :y | (x argumentAt: 1) < (y argumentAt: 1)].
	pragmas do: [ :eachPragma | 
		(eachPragma selector findTokens: $:) size = 1 
			ifTrue: [ self perform: eachPragma selector with: aComposite ]. 
		(eachPragma selector findTokens: $:) size = 2
			ifTrue: [ self perform: eachPragma selector with: aComposite with: aSpotter ] ]