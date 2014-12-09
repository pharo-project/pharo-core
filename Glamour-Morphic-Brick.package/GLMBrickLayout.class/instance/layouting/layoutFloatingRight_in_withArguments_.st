layoutFloatingRight: aBrick in: newBounds withArguments: arguments

	| left top right bottom |
	
	left := aBrick owner width - aBrick width - aBrick layoutProperties marginRight.
	top := aBrick layoutProperties marginTop.
	right := aBrick owner width - aBrick layoutProperties marginRight.
	bottom := aBrick owner height - aBrick layoutProperties marginBottom.
	
	self setNewBounds: (GLMBrickLayoutBounds on: ((left@top) corner: right@bottom) of: aBrick) to: aBrick in: aBrick owner.
	
	^ 0