system triggers
traitDefinitionChangedFrom: oldTrait to: newTrait
	self announce: (ModifiedTraitDefinitionEvent traitDefinitionChangedFrom: oldTrait to: newTrait)