private
animationForMoveSuccess: success 
	| start stop slideForm |
	success
		ifTrue: [^ self]
		ifFalse: 
			[start := self fullBounds origin.
			stop := self source bounds origin].
	start = stop ifTrue: [^ self].
	slideForm := self imageFormForRectangle: ((self fullBounds origin corner: self fullBounds corner + self activeHand shadowOffset)
					merge: self activeHand bounds).
	slideForm offset: 0 @ 0.
	slideForm
		slideWithFirstFrom: start
		to: stop
		nSteps: 12
		delay: 20