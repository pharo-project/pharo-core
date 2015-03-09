testMarkerOneStaticInChildrenHeight
	|root brick|
	
	root := self newBrickWithFullDependsOnChildren.
	brick := self newBrickWithStaticExtent.
	root addBrickBack: brick.
	self markFullyClean: root.
	
	brick wrappedBounds markHeightDirty.
	GLMBrickLayouter uniqueInstance markDependent: brick.
	
	self assert: brick wrappedBounds isWidthClean.
	self assert: brick wrappedBounds isHeightDirty.
	
	self assert: root wrappedBounds isWidthClean.
	self assert: root wrappedBounds isHeightDirty.