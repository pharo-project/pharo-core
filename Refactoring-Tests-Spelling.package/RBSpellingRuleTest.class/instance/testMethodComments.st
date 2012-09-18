tests
testMethodComments
	| class result |
	class := self defineClass: #RBSpellingRuleData.
	class compile: 'wrong "brkn comment"' classified: #(accessing).
	class compile: 'right "right comment"' classified: #(accessing).
	result := self
		runRule: RBMethodCommentsSpellingRule
		expect: #('brkn').
	self assert: (result includesSelector: #wrong in: class).
	self deny: (result includesSelector: #right in: class)