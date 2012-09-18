testing-environments
testClassEnvironment
	| aClassEnvironment |
	aClassEnvironment := RBClassEnvironment 
		onEnvironment: universalEnvironment 
		classes: (Array with: Object with: Object class).
	self universalTestFor: aClassEnvironment.
	self deny: (universalEnvironment isClassEnvironment).
	self assert: (aClassEnvironment isClassEnvironment).
	self assert: (aClassEnvironment implementorsOf: #printString) numberSelectors = 1