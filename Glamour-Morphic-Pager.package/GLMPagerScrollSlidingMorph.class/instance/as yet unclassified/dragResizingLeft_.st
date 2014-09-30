dragResizingLeft: evt
	| leftDelta left right maxLeft|
	
	leftDelta:= (self bounds right - startResizingWidth - evt position x - startDragX).
	
	right := self layoutFrame rightOffset.
	left := right - startResizingWidth - leftDelta.
	maxLeft := right - pagerModel circleButtonSize.
	
	left := (left max: 0) min: maxLeft.
	
	self layoutFrame: (
		LayoutFrame 
			fractions: (0 @ 0 corner: 0 @ 0)
			offsets: (left @ 0 corner: right @ self height)
	).
	
	pagerModel notifyScrollerBoundsChanged: (owner left + left)@(owner left + right).
	