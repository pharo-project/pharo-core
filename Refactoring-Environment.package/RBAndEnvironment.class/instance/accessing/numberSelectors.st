numberSelectors
	| total |
	total := 0.
	environment classesAndSelectorsDo: 
			[:each :sel | 
			(andedEnvironment includesSelector: sel in: each) 
				ifTrue: [total := total + 1]].
	^total