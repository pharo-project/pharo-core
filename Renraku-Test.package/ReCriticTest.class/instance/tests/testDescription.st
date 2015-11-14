testDescription
	| rule critic |
	
	rule := (RBLintRule allSubclasses select: #isVisible)	 anyOne new.
	critic := ReAbstractCritic for: thisContext method by: rule.
	
	self assert: critic description equals: rule rationale