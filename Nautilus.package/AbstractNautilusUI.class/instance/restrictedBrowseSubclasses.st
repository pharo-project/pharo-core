menus behavior
restrictedBrowseSubclasses

	self selectedClass
		ifNil: [ ^ self ]
		ifNotNil:[:class || newEnvironment |
			newEnvironment := self browsedEnvironment forClasses: class withAllSubclasses.
			self model class openOnClass: class inEnvironment: newEnvironment ]