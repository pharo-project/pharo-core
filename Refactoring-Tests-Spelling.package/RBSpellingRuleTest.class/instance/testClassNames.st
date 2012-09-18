tests
testClassNames
	| wrong right result |
	wrong := self defineClass: #RBSpellingRuleDataWrng.
	right := self defineClass: #RBSpellingRuleDataRight.
	result := self 
		runRule: RBClassNamesSpellingRule
		expect: #('Wrng').
	self assert: (result includesClass: wrong).
	self deny: (result includesClass: right)