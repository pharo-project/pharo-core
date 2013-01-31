tests
testMethodProtocols
	| class result |
	class := self defineClass: #RBSpellingRuleData.
	class compile: 'wrong' classified: #(wrng).
	class compile: 'right' classified: #(right).
	result := self
		runRule: RBMethodProtocolsSpellingRule
		expect: #('wrng').
	self assert: (result includesSelector: #wrong in: class).
	self deny: (result includesSelector: #right in: class)