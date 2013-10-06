specSelectors
	
	^  self class withAllSuperclasses gather: [ :class |
		(((SpecPragmaCollector behavior: class)
			filter: [ :pragma | pragma keyword = #spec])
			reset;
			collected)
			collect: [ :pragmas | pragmas method selector ]]