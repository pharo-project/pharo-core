system triggers
classDefinitionChangedFrom: oldClass to: newClass
	self announce: (ModifiedClassDefinitionEvent classDefinitionChangedFrom: oldClass to: newClass)