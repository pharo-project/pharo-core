dragSliding: evt
	| newLeft value|
	
	newLeft := (evt position x - startDragX).
	value := self computeScrollValue: newLeft.
	
	self scrollTo: value.
	self synchronizeScrollTo: value.