testTitle
	| rule critic |
	
	rule := (RBLintRule allSubclasses select: #isVisible)	 anyOne new.
	critic := ReCritic for: thisContext method by: rule.
	
	self assert: critic title equals: rule name