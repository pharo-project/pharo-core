protocol
specSelectors
	
	^ (((SpecPragmaCollector behavior: self class)
		filter: [:prg | prg keyword = 'spec:' and: [prg arguments includes: #default]])
		reset;
		collected)
		collect: [:e | e method selector ]