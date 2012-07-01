organization updating
applyChangesOfNewTraitCompositionReplacing: oldComposition
	| oldMethodDict changedSelectors |
	oldMethodDict := self methodDict copy.
	changedSelectors := super applyChangesOfNewTraitCompositionReplacing: oldComposition.
	self noteChangesFrom: oldMethodDict.
	^ changedSelectors.