system triggers
traitDefinitionChangedFrom: oldTrait to: newTrait
	self announce: (ClassModifiedClassDefinition classDefinitionChangedFrom: oldTrait to: newTrait)