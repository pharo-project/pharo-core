addCustomMenuItems: aCustomMenu hand: aHandMorph
	| outer |
	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	aCustomMenu addUpdating: #autoFitString target: self selector: #autoFitOnOff.
	aCustomMenu addUpdating: #wrapString target: self selector: #wrapOnOff.
	aCustomMenu add: 'text margins...' translated action: #changeMargins:.
	aCustomMenu add: 'add predecessor' translated action: #addPredecessor:.
	aCustomMenu add: 'add successor' translated action: #addSuccessor:.
	aCustomMenu add: 'code pane menu...' translated action: #yellowButtonActivity.
	aCustomMenu add: 'code pane shift menu...' translated action: #shiftedYellowButtonActivity.

	outer := self owner.
	outer ifNotNil: [
	outer isLineMorph ifTrue:
		[container isNil
			ifFalse: [aCustomMenu add: 'reverse direction' translated action: #reverseCurveDirection.
					aCustomMenu add: 'set baseline' translated action: #setCurveBaseline:]]
		ifFalse:
		[self fillsOwner
			ifFalse: [aCustomMenu add: 'fill owner''s shape' translated action: #fillingOnOff]
			ifTrue: [aCustomMenu add: 'rectangular bounds' translated action: #fillingOnOff].
		self avoidsOcclusions
			ifFalse: [aCustomMenu add: 'avoid occlusions' translated action: #occlusionsOnOff]
			ifTrue: [aCustomMenu add: 'ignore occlusions' translated action: #occlusionsOnOff]]].
	