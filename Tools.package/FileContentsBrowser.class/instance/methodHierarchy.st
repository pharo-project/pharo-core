other
methodHierarchy
	(self selectedClassOrMetaClass isNil or:
		[self selectedClassOrMetaClass hasDefinition])
			ifFalse: [super methodHierarchy]