composition
uses: aTraitCompositionOrArray
	| copyOfOldTrait newComposition |
	copyOfOldTrait := self copy.
	newComposition := aTraitCompositionOrArray asTraitComposition.
	self assertConsistantCompositionsForNew: newComposition.
	self setTraitComposition: newComposition.
	SystemChangeNotifier uniqueInstance
		traitDefinitionChangedFrom: copyOfOldTrait to: self.