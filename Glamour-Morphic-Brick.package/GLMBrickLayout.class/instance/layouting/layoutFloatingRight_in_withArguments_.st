layoutFloatingRight: aBrick in: newBounds withArguments: arguments

	| left top right bottom |
	
	left := aBrick owner width - aBrick width - aBrick marginRight.
	top := aBrick  marginTop.
	right := aBrick owner width - aBrick marginRight.
	bottom := aBrick owner height - aBrick marginBottom.
	
	self setNewBounds: (GLMBrickLayoutBounds on: ((left@top) corner: right@bottom) of: aBrick) to: aBrick in: aBrick owner.
	
	^ 0