system triggers
traitDefinitionChangedFrom: oldTrait to: newTrait
	self trigger: (ModifiedTraitDefinitionEvent traitDefinitionChangedFrom: oldTrait to: newTrait)