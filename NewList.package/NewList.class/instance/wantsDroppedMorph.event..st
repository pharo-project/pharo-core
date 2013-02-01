communication with model
wantsDroppedMorph: aMorph event: anEvent

	self dropEnabled ifFalse: [ ^ false ].

	^ self model wantsDroppedMorph: aMorph event: anEvent