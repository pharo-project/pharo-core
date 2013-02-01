private
scrollToShow: aRectangle
	"scroll to include as much of aRectangle as possible, where aRectangle is in the scroller's local space"
	| range |
	
	((aRectangle top - scroller offset y - self headerHeight) >= 0 and: [
		(aRectangle bottom - scroller offset y) <= (self innerBounds height) ])
		ifTrue: [ "already visible"
			^self ].

	range := self vLeftoverScrollRange.
	scrollBar value: (range > 0
		ifTrue: [((aRectangle top-self headerHeight) / self vLeftoverScrollRange)
							truncateTo: scrollBar scrollDelta]
		ifFalse: [0]).
	scroller offset: -3 @ (range * scrollBar value).