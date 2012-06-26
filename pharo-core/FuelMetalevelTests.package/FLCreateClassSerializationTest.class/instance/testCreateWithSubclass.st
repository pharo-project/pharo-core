tests
testCreateWithSubclass
	"Tests materialization of a class that has a external subclass. Currently, this is the expected behaviour."
	
	| serializedClass aSubclass materializedClass |	
	serializedClass := self newSubclassOf: Object instanceVariableNames: '' classVariableNames: ''.
	aSubclass := self newSubclassOf: serializedClass instanceVariableNames: '' classVariableNames: ''.
	
	materializedClass := self resultOfSerializeRemoveAndMaterialize: serializedClass.

	self assert: materializedClass subclasses size = 1.
	self assert: materializedClass subclasses first == aSubclass.