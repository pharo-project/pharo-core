initializeRules

	 classRules := OrderedCollection new.
	methodRules := OrderedCollection new.

	RBCompositeLintRule allGoodRules leaves
		reject: [ :rule |
			self excludedRuleNames includes: rule class name ]
		thenDo: [ :rule |
			rule class checksClass  ifTrue: [  classRules add: rule ].
			rule class checksMethod ifTrue: [ methodRules add: rule ] ]