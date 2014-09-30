dragResizingRight: evt
	| rightDelta left right minRight maxRight|
	
	rightDelta:= (evt position x - self left - startDragX).
	
	left := self layoutFrame leftOffset.
	right := left + startResizingWidth + rightDelta.
	minRight := left + pagerModel circleButtonSize.
	maxRight := owner width.
	
	right := (right max: minRight) min: maxRight.
	
	self layoutFrame: (
		LayoutFrame 
			fractions: (0 @ 0 corner: 0 @ 0)
			offsets: (left @ 0 corner: right @ self height)
	).
	
	pagerModel notifyScrollerBoundsChanged: (owner left + left)@(owner left + right).
	