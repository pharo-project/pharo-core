system triggers
classRenamed: aClass from: oldClassName to: newClassName inCategory: aCategoryName 
	self trigger: (RenamedEvent 
				class: aClass
				category: aCategoryName
				oldName: oldClassName
				newName: newClassName)