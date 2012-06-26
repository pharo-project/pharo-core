system triggers
classAdded: aClass inCategory: aCategoryName 
	self trigger: (AddedEvent class: aClass category: aCategoryName)