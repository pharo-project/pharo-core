testBrickDependsOnChildrenOneStatic
	|root brick|
	
	root := self newBrickWithFullDependsOnChildren.
	brick := self newBrickWithStaticExtent.
	
	root addBrickBack: brick.
	
	self assert: root isWidthDependsOnChildren.
	self assert: root isHeightDependsOnChildren.
	
	self assertAllSubbricksAreClean: root.
	
	self assert: root extent equals: brick extent