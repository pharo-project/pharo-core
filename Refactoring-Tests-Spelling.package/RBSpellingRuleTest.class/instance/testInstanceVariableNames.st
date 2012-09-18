tests
testInstanceVariableNames
	| class result |
	class := self defineClass: #RBSpellingRuleData.
	class 
		addInstanceVariable: 'instanceNameWrng'; 
		addInstanceVariable: 'instanceNameRight'.
	class theMetaClass
		addInstanceVariable: 'classNameWrng'; 
		addInstanceVariable: 'classNameRight'.
	result := self
		runRule: RBInstanceVariableNamesSpellingRule
		expect: #('Wrng').
	self assert: (result includesClass: class).
	self assert: (result includesClass: class theMetaClass)