initialization
initializeBindingsFrom: desc
	
	desc addInstVarDescriptions do: [:e || adds | 
		textBindings at: e put: Dictionary new.
		adds := desc addIntoMethodDescriptions select: [:d | d selector = ('register', e name capitalized, 'Events') ].
		 adds do: [:a || source item |
			source :=  a code substrings.
			item := source second allButLast asSymbol.
			(bindings at: e) at: item put: (((source allButFirst:2) joinUsing: ' ')->true) ]].