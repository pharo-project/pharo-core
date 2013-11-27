mouseDown: event on: aTargetMorph
	"Changed to take keybaord focus."

	((self autoMultiSelection) and: [event shiftPressed not])
		ifTrue: [
			firstClickedMorph := aTargetMorph.
			
			aTargetMorph selected
				ifTrue: [
					(self selectOnlyLastHighlighted  and: [ aTargetMorph hasContentToShow ])
						ifTrue: [
							self removeFromSelection: aTargetMorph.
							aTargetMorph = self lastClickedMorph
								ifFalse: [ self addToSelection: aTargetMorph ] ]
						ifFalse: [ self removeFromSelection: aTargetMorph ] ]
				ifFalse: [
					(self selectOnlyLastHighlighted  and: [ aTargetMorph hasContentToShow ])
						ifTrue: [ 
							aTargetMorph = self lastClickedMorph
								ifTrue: [ 
									self addToSelection:  aTargetMorph.
									self lastClickedMorph: aTargetMorph ] ]
						ifFalse: [ 
							self addToSelection:  aTargetMorph.
							self lastClickedMorph: aTargetMorph ] ] ].
			
	(event shiftPressed not or: [firstClickedMorph isNil])
			ifTrue: [firstClickedMorph := aTargetMorph].
			
			
	aTargetMorph mouseDown: event

