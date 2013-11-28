testDuplicateClassWithNewName
	| createdClass allClasses |
	createdClass := [ factory duplicateClass: TestCase withNewName: #MyTestClass ] on: Error do: [ #MyTestClass asClass ].
	allClasses := SystemNavigation new allClasses.
	self assert: (factory createdClasses allSatisfy: [:class| allClasses includes: class]).
	factory cleanUp.	
	self assert: (factory createdClasses allSatisfy: [:class| class isObsolete]). 
	allClasses := SystemNavigation new allClasses.
	self assert: (factory createdClasses noneSatisfy: [:class| allClasses includes: class]).
	self deny: (ChangeSet current changedClassNames includes: createdClass).