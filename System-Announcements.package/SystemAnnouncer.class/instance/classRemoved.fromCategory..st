system triggers
classRemoved: aClass fromCategory: aCategoryName 
	self announce: (RemovedEvent class: aClass category: aCategoryName)