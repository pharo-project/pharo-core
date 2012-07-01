tests
testMethodChangingClassVariable

	| materializedCompiledMethod |
	self classVariableForTesting:  true. 

	materializedCompiledMethod := self materializedCompiledMethod: self class >> #classVariableForTesting.

	self classVariableForTesting: false.
	self deny: (materializedCompiledMethod valueWithReceiver: self arguments: #()).

 