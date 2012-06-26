layout
submorphBounds
	"Answer, in owner coordinates, the bounds of my visible submorphs, or my bounds"
	| box |
	box := self localVisibleSubmorphBounds.
	^(box ifNotNil: [ transform localBoundsToGlobal: box ] ifNil: [ self bounds ]) truncated.
