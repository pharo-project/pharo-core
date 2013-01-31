tests
testMethodSelectors
	| class result |
	class := self defineClass: #RBSpellingRuleData.
	class compile: 'wrng' classified: #(accessing).
	class compile: 'right' classified: #(accessing).
	result := self
		runRule: RBMethodSelectorsSpellingRule
		expect: #('wrng').
	self assert: (result includesSelector: #wrng in: class).
	self deny: (result includesSelector: #right in: class)