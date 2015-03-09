testFillBrickInsideStatic
	|root brick|
	
	root := self newBrickWithStaticExtent.
	brick := self newBrickWithFullFill.
	brick isWidthDependsOnParent.
	brick isHeightDependsOnParent.
	root addBrickBack: brick.
	
	self assertAllSubbricksAreClean: root.
	self assert: brick extent equals: root extent
	