instance creation
traitDefinitionChangedFrom: oldTrait to: newTrait
	| instance |
	instance := self item: newTrait kind: self classKind.
	instance oldItem: oldTrait.
	^instance