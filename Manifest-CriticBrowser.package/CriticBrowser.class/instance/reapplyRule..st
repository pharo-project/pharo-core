private
reapplyRule: aRule

	|  oldCritics |
	
	oldCritics := aRule critics.
	aRule resetResult.
	
	environment packages do: [:package |
		checker runRules:   aRule onPackage: package.
	]. 	
	
	(oldCritics \ (aRule critics)) do: [:each |
		self addTruePositive: each onRule: aRule].
	
	checker rule: aRule. 