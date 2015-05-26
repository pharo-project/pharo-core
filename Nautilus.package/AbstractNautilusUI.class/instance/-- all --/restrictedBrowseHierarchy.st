restrictedBrowseHierarchy

	self selectedClass
		ifNil: [ ^ self ]
		ifNotNil: [ :class |
			self restrictedBrowseClasses: (class withAllSuperclasses, class allSubclasses) ]