testing
testSubclassWithInstanceVariables
	"Ensure that the invariants for superclass/subclass format are preserved"
	baseClass := Object subclass: self baseClassName
		instanceVariableNames: 'var1 var2'
		classVariableNames: ''
		poolDictionaries: ''
		category: self categoryNameForTemporaryClasses.
	[
	self shouldnt:[self makeNormalSubclassOf: baseClass] raise: Error.
	self assert: (subClass isPointers).
	self deny: (subClass isVariable).
	self deny: (subClass isWeak).
	self deny: (subClass isBytes).
	subClass removeFromSystem.

	"pointer classes"
	self shouldnt:[self makeIVarsSubclassOf: baseClass] raise: Error.
	self assert: (subClass isPointers).
	self deny: (subClass isVariable).
	self deny: (subClass isWeak).
	self deny: (subClass isBytes).
	subClass removeFromSystem.

	self shouldnt:[self makeVariableSubclassOf: baseClass] raise: Error.
	self assert: (subClass isPointers).
	self assert: (subClass isVariable).
	self deny: (subClass isWeak).
	self deny: (subClass isBytes).
	subClass removeFromSystem.

	self shouldnt:[self makeWeakSubclassOf: baseClass] raise: Error.
	self assert: (subClass isPointers).
	self assert: (subClass isVariable).
	self assert: (subClass isWeak).
	self deny: (subClass isBytes).
	subClass removeFromSystem.

	"bit classes"
	self should:[self makeByteVariableSubclassOf: baseClass] raise: Error.
	self should:[self makeWordVariableSubclassOf: baseClass] raise: Error.
	] ensure:[self cleanup].