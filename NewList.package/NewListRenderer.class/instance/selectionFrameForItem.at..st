drawing - private
selectionFrameForItem: item at: index
	"Answer the selection frame rectangle."

	| frame |
	frame := self drawBoundsForItem: item at: index.
	^ self ensureFrame: frame.