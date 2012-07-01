traits
applyChangesOfNewTraitCompositionReplacing: oldComposition
	"See Trait>>applyChangesOfNewTraitCompositionReplacing:"
	| changedSelectors |
	changedSelectors := super applyChangesOfNewTraitCompositionReplacing: oldComposition.
	self classSide noteNewBaseTraitCompositionApplied: self traitComposition.
	^ changedSelectors