system triggers
classRemoved: aClass fromCategory: aCategoryName 
	self trigger: (RemovedEvent class: aClass category: aCategoryName)