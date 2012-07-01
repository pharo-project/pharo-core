geometry
griddedPoint: ungriddedPoint

	| griddingContext |
	self flag: #arNote. "Used by event handling - should transform to pasteUp for gridding"
	(griddingContext := self pasteUpMorph) ifNil: [^ ungriddedPoint].
	^ griddingContext gridPoint: ungriddedPoint