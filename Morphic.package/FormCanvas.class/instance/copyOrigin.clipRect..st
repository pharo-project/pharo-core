copying
copyOrigin: aPoint clipRect: aRectangle
	"Return a copy of this canvas with the given origin. The clipping rectangle of this canvas is the intersection of the given rectangle and the receiver's current clipping rectangle. This allows the clipping rectangles of nested clipping morphs to be composed."
	^ self copy
		setOrigin: aPoint
		clipRect: (clipRect intersect: aRectangle)