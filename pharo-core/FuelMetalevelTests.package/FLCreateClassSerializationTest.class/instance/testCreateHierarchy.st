tests
testCreateHierarchy
	"Tests materialization of a hierarchy of classes that is not defined in the image"
	
	| serializedClasses materializedClasses a b c d |	
	a := self newSubclassOf: Object instanceVariableNames: '' classVariableNames: ''.
	b := self newSubclassOf: a instanceVariableNames: '' classVariableNames: ''.
	c := self newSubclassOf: a instanceVariableNames: '' classVariableNames: ''.
	d := self newSubclassOf: c instanceVariableNames: '' classVariableNames: ''.
	serializedClasses := Array with: a with: b with: c with: d.
	
	materializedClasses := self resultOfSerializeRemoveAndMaterializeAll: serializedClasses.

	self assert: serializedClasses size = materializedClasses size.

	serializedClasses withIndexDo: [ :aClass :index | 
		self deny: aClass == (materializedClasses at: index) ].	

	self assert: Object = materializedClasses first superclass.
	self assert: materializedClasses first = materializedClasses second superclass.
	self assert: materializedClasses first = materializedClasses third superclass.
	self assert: materializedClasses third = materializedClasses fourth superclass.

	self assert: (Set with: materializedClasses second with: materializedClasses third) = materializedClasses first subclasses asSet.
	self assert: materializedClasses second subclasses isEmpty.
	self assert: (Set with: materializedClasses fourth) = materializedClasses third subclasses asSet.
	self assert: materializedClasses fourth subclasses isEmpty.
	"Notice that the instVar subclasses is only filled with classes inside the serialization. But for exernal classes Fuel does nothing. In this case,  FLStubA should NOT be added to Object subclasses."
	self deny: (Object subclasses includes: materializedClasses first).
	self deny: (Object subclasses identityIncludes: materializedClasses first).