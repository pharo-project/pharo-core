traits
newClass
	(self selectedClassOrMetaClass notNil and: 
		[self selectedClassOrMetaClass isTrait]) ifTrue: [self classListIndex: 0].
	self editClass.
	editSelection := #newClass.
	self contentsChanged