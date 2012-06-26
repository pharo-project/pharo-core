private
show: aString from: startNumber to: endNumber during: aBlock

	| progressMorph result |
	progressMorph := self addItemShowing: aString from: startNumber to: endNumber.
	self recenter.
	self openInWorld.
	[ result := progressMorph do: aBlock ] ensure: [ self close: progressMorph ].
	^ result.