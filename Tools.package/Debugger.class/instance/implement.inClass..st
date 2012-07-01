context stack menu
implement: aMessage inClass: aClass
	
	aClass
		compile: (DynamicMessageImplementor for: aMessage in: aClass) value
		classified: (self askForCategoryIn: aClass default: 'as yet unclassified').
	self setContentsToForceRefetch.
	self selectedContext privRefreshWith: (aClass lookupSelector: aMessage selector).
	self selectedContext method numArgs > 0 ifTrue:
		[(self selectedContext tempAt: 1) arguments withIndexDo:
			[:arg :index|
			self selectedContext tempAt: index put: arg]].
	self resetContext: self selectedContext.
	self debug.
