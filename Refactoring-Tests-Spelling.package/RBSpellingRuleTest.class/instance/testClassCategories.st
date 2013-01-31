tests
testClassCategories
	| wrong right result |
	wrong := self defineClass: #RBSpellingRuleDataWrong category: self categoryWrong.
	right := self defineClass: #RBSpellingRuleDataRight.
	result := self 
		runRule: RBClassCategoriesSpellingRule
		expect: #('Wrng').
	self assert: (result includesClass: wrong).
	self deny: (result includesClass: right)