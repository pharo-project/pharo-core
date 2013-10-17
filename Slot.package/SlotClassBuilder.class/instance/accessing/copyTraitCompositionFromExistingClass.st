copyTraitCompositionFromExistingClass
	"Ugly Helper method: I copy over the trait compisition of the class in my builder environment."
	| oldClass |
	oldClass := self environment at: name ifAbsent: [ ^ self ].
	oldClass hasTraitComposition
		ifTrue: [ self traitComposition: oldClass traitComposition copyTraitExpression ].
	oldClass class hasTraitComposition
		ifTrue: [ self classTraitComposition: oldClass class traitComposition copyTraitExpression ]