menus behavior
restrictedBrowseSuperclasses

	self selectedClass
		ifNil: [ ^ self ]
		ifNotNil:[:class || newEnvironment |
			newEnvironment := self browsedEnvironment forClasses: class withAllSuperclasses.
			self model class openOnClass: class inEnvironment: newEnvironment ]