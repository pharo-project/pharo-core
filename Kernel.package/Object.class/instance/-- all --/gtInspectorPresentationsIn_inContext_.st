gtInspectorPresentationsIn: composite inContext: aGTInspector
	"This is a utility method that collects all presentations for the current object.
	By default, it simply looks for the #gtInspectorPresentationOrder: pragma.
	The inspector can decice whether or not a presentation should be dispayed.
	Subclasses might want to override it for more special behavior."
	| pragmas |
	pragmas := Pragma 
				allNamed: #gtInspectorPresentationOrder: 
				from: self class 
				to: Object
				sortedUsing: [: x :y | (x argumentAt: 1) < (y argumentAt: 1)].
	pragmas := pragmas select: [ :aPragma | 
		aGTInspector shouldDisplayPresentationCreateBy: aPragma method ].
	pragmas do: [ :eachPragma | 
		(eachPragma selector findTokens: $:) size = 1 
			ifTrue: [ self perform: eachPragma selector with: composite ]. 
		(eachPragma selector findTokens: $:) size = 2
			ifTrue: [ self perform: eachPragma selector with: composite with: aGTInspector ] ]