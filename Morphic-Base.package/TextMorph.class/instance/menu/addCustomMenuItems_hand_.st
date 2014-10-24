addCustomMenuItems: aCustomMenu hand: aHandMorph
	| outer |
	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	aCustomMenu addUpdating: #autoFitString target: self selector: #autoFitOnOff.
	aCustomMenu addUpdating: #wrapString target: self selector: #wrapOnOff.
	aCustomMenu add: 'text margins...' action: #changeMargins:.
	aCustomMenu add: 'add predecessor' action: #addPredecessor:.
	aCustomMenu add: 'add successor' action: #addSuccessor:.
	aCustomMenu add: 'code pane menu...' action: #yellowButtonActivity.
	aCustomMenu add: 'code pane shift menu...' action: #shiftedYellowButtonActivity.

	outer := self owner.
	outer ifNotNil: [
	outer isLineMorph ifTrue:
		[container isNil
			ifFalse: [aCustomMenu add: 'reverse direction' action: #reverseCurveDirection.
					aCustomMenu add: 'set baseline' action: #setCurveBaseline:]]
		ifFalse:
		[self fillsOwner
			ifFalse: [aCustomMenu add: 'fill owner''s shape' action: #fillingOnOff]
			ifTrue: [aCustomMenu add: 'rectangular bounds' action: #fillingOnOff].
		self avoidsOcclusions
			ifFalse: [aCustomMenu add: 'avoid occlusions' action: #occlusionsOnOff]
			ifTrue: [aCustomMenu add: 'ignore occlusions' action: #occlusionsOnOff]]].
	