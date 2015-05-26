undoMove: cmd redo: redo owner: formerOwner bounds: formerBounds predecessor: formerPredecessor 
	"Handle undo and redo of move commands in morphic"

	self owner ifNil: [ ^ self inform: 'No owner' ].

	formerOwner ifNotNil: 
			[formerPredecessor ifNil: [formerOwner addMorphFront: self]
				ifNotNil: [formerOwner addMorph: self after: formerPredecessor]].
	self bounds: formerBounds.
	(self isSystemWindow) ifTrue: [self activate]