stepping and presenter
step

	|  stepBounds mousePosition delta |
	ActiveHand hasSubmorphs ifFalse: [ ^ wantsSteps := false ].
	mousePosition := ActiveHand position.
	stepBounds := self listSource fullBoundsInWorld.
	(stepBounds containsPoint: mousePosition) ifFalse: [ ^ wantsSteps := false ].
	delta := stepBounds top + self headerHeight + 10 - mousePosition y.
	(mousePosition y > (stepBounds top + self headerHeight-10) and: [ 0 < delta])
		ifTrue: [ ^ self listSource scrollBar scrollUp: delta//2 ].
		
	delta := stepBounds top - self headerHeight + self listSource height - 5 - mousePosition y.
	( 0 > delta )
		ifTrue: [ ^ self listSource scrollBar scrollDown: delta negated // 3].
		
	self stopStepping.