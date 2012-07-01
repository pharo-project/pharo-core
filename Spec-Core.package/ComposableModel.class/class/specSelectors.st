protocol
specSelectors
	
	^ (((SpecPragmaCollector behavior: self class)
		filter: [:prg | prg keyword = #spec])
		reset;
		collected)
		collect: [:e | e method selector ]