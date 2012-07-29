system triggers
classDefinitionChangedFrom: oldClass to: newClass
	self trigger: (ModifiedClassDefinitionEvent classDefinitionChangedFrom: oldClass to: newClass)