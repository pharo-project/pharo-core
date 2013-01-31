tests
testArgumentVariableNames
	| class result |
	class := self defineClass: #RBSpellingRuleData.
	class compile: 'wrong: wrng' classified: #(accessing).
	class compile: 'right: anInteger' classified: #(accessing).
	result := self
		runRule: RBArgumentVariableNamesSpellingRule
		expect: #('wrng').
	self assert: (result includesSelector: #wrong: in: class).
	self deny: (result includesSelector: #right: in: class)