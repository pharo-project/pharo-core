tests
testLiteralValues
	| class result |
	class := self defineClass: #RBSpellingRuleData.
	class compile: 'wrong #wrng' classified: #(accessing).
	class compile: 'right #right' classified: #(accessing).
	result := self
		runRule: RBLiteralValuesSpellingRule
		expect: #('wrng').
	self assert: (result includesSelector: #wrong in: class).
	self deny: (result includesSelector: #right in: class)