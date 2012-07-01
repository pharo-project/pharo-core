private
selectionChanged
	"Invalidate all the selection rectangles. 
	Make sure that any drop shadow is accounted for too."
	self paragraph selectionRects
		do: [:r | self
				invalidRect: (self expandFullBoundsForDropShadow: (r intersect: self fullBounds))]