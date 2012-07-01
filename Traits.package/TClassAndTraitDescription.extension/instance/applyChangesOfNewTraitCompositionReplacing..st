organization updating
applyChangesOfNewTraitCompositionReplacing: oldComposition
	| changedSelectors |
	changedSelectors := super applyChangesOfNewTraitCompositionReplacing: oldComposition.
	self noteRecategorizedSelectors: changedSelectors oldComposition: oldComposition.
	^ changedSelectors.