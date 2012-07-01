tests
testCreateHierarchyWithExistingClasses
	"Tests materialization of a hierarchy of classes that are not defined in the image and classes that indeed are defined"
	
	| serializedClasses materializedClasses a b c d |	
	a := self newSubclassOf: Object instanceVariableNames: '' classVariableNames: ''.
	b := self newSubclassOf: a instanceVariableNames: '' classVariableNames: ''.
	c := self newSubclassOf: a instanceVariableNames: '' classVariableNames: ''.
	d := self newSubclassOf: Date instanceVariableNames: '' classVariableNames: ''.
	serializedClasses := Array with: a with: b with: c with: d.
	
	materializedClasses := self resultOfSerializeRemoveAndMaterializeAll: serializedClasses.

	self assert: serializedClasses size = materializedClasses size.

	serializedClasses withIndexDo: [ :aClass :index | 
		self deny: aClass == (materializedClasses at: index) ].	

	self assert: Object == materializedClasses first superclass.
	self assert: materializedClasses first == materializedClasses second superclass.
	self assert: materializedClasses first == materializedClasses third superclass.
	"Notice that the superclass of d is Date and since it is present in the image, we need exactly that instance."
	self assert: Date == materializedClasses fourth superclass.

	self assert: (Set with: materializedClasses second with: materializedClasses third) = materializedClasses first subclasses asSet.
	self assert: materializedClasses second subclasses isEmpty.
	self assert: materializedClasses third subclasses isEmpty.
	self assert: materializedClasses fourth subclasses isEmpty.
	
	self deny: (Object subclasses identityIncludes: materializedClasses first).
	self deny: (Date subclasses identityIncludes: materializedClasses fourth).