private
privateFullMoveBy: delta

	| griddedDelta griddingMorph |
	selectedItems isEmpty ifTrue: [^ super privateFullMoveBy: delta].
	griddingMorph := self pasteUpMorph.
	griddingMorph ifNil: [^ super privateFullMoveBy: delta].
	griddedDelta := (griddingMorph gridPoint: self position + delta + slippage) -
					(griddingMorph gridPoint: self position).
	slippage := slippage + (delta - griddedDelta).  "keep track of how we lag the true movement."
	griddedDelta = (0@0) ifTrue: [^ self].
	super privateFullMoveBy: griddedDelta.
	selectedItems do:
		[:m | m position: (m position + griddedDelta) ]
