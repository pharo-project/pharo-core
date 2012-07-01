testing
testDefaultCategoryCleanUp
	| createdClassNames allClasses |
	3 timesRepeat: [
		factory newClass].
	createdClassNames := factory createdClassNames.
	factory cleanUp.	
	self assert: (factory createdClasses allSatisfy: [:class| class isObsolete]). 
	allClasses := SystemNavigation new allClasses.
	self assert: (factory createdClasses noneSatisfy: [:class| allClasses includes: class]).
	self deny: (SystemOrganization categories includes: factory defaultCategory). 
	self deny: (ChangeSet current changedClassNames includesAnyOf: createdClassNames)
