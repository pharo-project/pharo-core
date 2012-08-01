system triggers
classAdded: aClass inCategory: aCategoryName 
	self announce: (AddedEvent class: aClass category: aCategoryName)