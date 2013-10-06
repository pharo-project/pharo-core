reapplyRule: aRule

	|  oldCritics |
	oldCritics := aRule critics.
	aRule resetResult.
	rbEnvironment packages do: [ :package |
		package packageSet packages do: [ :rpackage |
				checker runRules: aRule onPackage: rpackage withoutTestCase: removeTestCase]]. 	
	(oldCritics \ (aRule critics)) do: [ :each |
		cache removeCritic: each forRule: aRule.
		cache removeFalsePositive: each forRule: aRule.
		cache removeToDo: each forRule: aRule ].
	checker rule: aRule. 