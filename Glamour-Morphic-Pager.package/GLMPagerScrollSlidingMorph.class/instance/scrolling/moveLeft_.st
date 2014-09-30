moveLeft: left "Integer - pixels"

	"moves scrollbar inside parent to the specified left distance in pixels and notifies all listeners about that"
	| right |
	
	right := left + self width.
	
	self layoutFrame: (
		LayoutFrame 
			fractions: (0 @ 0 corner: 0 @ 0)
			offsets: (left @ 0 corner: right @ self height)
	).
	
	pagerModel notifyScrollerBoundsChanged: (owner left + left )@(owner left + right).