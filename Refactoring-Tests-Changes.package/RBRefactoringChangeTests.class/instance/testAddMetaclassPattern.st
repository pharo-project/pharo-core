tests-pattern
testAddMetaclassPattern
	"Make sure that all metaclass definitions can be parsed."
	
	self class environment allClassesDo: [ :class |
		| change |
		change := changes defineClass: class class definition.
		self assert: (change isKindOf: RBAddMetaclassChange).
		self assert: (change changeClassName = class name).
		self assert: (change classInstanceVariableNames = class class instVarNames).
		self universalTestFor: change ]