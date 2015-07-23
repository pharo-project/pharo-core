testIsAutoFixable
	| critic |
	
	critic := ReCritic for: thisContext method by: RBTransformationRule subclasses anyOne new.
	
	self assert: critic isAutofixable.
	
	critic := ReCritic for: thisContext method by: RBBlockLintRule subclasses anyOne new.
	
	self deny: critic isAutofixable