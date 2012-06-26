instance creation
classDefinitionChangedFrom: oldClass to: newClass
	| instance |
	instance := self item: newClass kind: self classKind.
	instance oldItem: oldClass.
	^instance