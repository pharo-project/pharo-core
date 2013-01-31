tests
testClassComments
	| wrong right result |
	wrong := self defineClass: #RBSpellingRuleDataWrong.
	wrong comment: 'brkn comment'.
	right := self defineClass: #RBSpellingRuleDataRight.
	right comment: 'right comment'.
	result := self
		runRule: RBClassCommentsSpellingRule
		expect: #('brkn').
	self assert: (result includesClass: wrong).
	self deny: (result includesClass: right)