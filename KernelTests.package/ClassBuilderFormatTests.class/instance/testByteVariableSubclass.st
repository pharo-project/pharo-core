testing
testByteVariableSubclass
	"Ensure that the invariants for superclass/subclass format are preserved"
	baseClass := Object variableByteSubclass: self baseClassName
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self categoryNameForTemporaryClasses.
	[

	self shouldnt:[self makeNormalSubclassOf: baseClass] raise: Error.
	self deny: (subClass isPointers).
	self assert: (subClass isVariable).
	self deny: (subClass isWeak).
	self assert: (subClass isBytes).
	subClass removeFromSystem.

	"pointer classes"
	self should:[self makeIVarsSubclassOf: baseClass] raise: Error.
	self should:[self makeVariableSubclassOf: baseClass] raise: Error.
	self should:[self makeWeakSubclassOf: baseClass] raise: Error.

	"bit classes"
	self shouldnt:[self makeByteVariableSubclassOf: baseClass] raise: Error.
	self deny: (subClass isPointers).
	self assert: (subClass isVariable).
	self deny: (subClass isWeak).
	self assert: (subClass isBytes).
	subClass removeFromSystem.

	self should:[self makeWordVariableSubclassOf: baseClass] raise: Error.

	] ensure:[self cleanup].