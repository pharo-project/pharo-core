tests
testClassVariableNames
	| class result |
	class := self defineClass: #RBSpellingRuleData.
	class addClassVariable: 'VariableNameWrng VariableNameRight'.
	result := self
		runRule: RBClassVariableNamesSpellingRule
		expect: #('Wrng').
	self assert: (result includesClass: class)