instance creation
browseVersionsForClass: aClass selector: aSelector
	self
		browseVersionsOf: (aClass compiledMethodAt: aSelector)
		class: aClass
		meta: aClass isMeta
		category: (aClass organization categoryOfElement: aSelector)
		selector: aSelector