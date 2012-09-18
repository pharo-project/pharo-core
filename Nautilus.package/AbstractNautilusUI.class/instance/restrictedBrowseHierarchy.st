menus behavior
restrictedBrowseHierarchy

	self selectedClass
		ifNil: [ ^ self ]
		ifNotNil:[:class || newEnvironment |
			newEnvironment := self browsedEnvironment forClasses: (class withAllSuperclasses, class allSubclasses).
			self model class openOnClass: class inEnvironment: newEnvironment ]