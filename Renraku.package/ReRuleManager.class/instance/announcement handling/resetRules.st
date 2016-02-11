resetRules

	rules := RBCompositeLintRule allGoodRules leaves
		reject: [ :rule |
			self excludedRuleNames includes: rule class name 
		].