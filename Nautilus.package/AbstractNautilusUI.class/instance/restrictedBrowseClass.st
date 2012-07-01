menus behavior
restrictedBrowseClass

	self selectedClass
		ifNil: [ ^ self ]
		ifNotNil:[:class || newEnvironment |
			newEnvironment := self browsedEnvironment forClasses: {class}.
			 self model class openOnClass: class inEnvironment: newEnvironment ]