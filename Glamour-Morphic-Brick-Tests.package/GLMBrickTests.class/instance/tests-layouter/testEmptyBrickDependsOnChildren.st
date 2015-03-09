testEmptyBrickDependsOnChildren
	|brick|
	
	brick := self newBrickWithFullDependsOnChildren.
	
	self assert: brick isWidthDependsOnChildren.
	self assert: brick isHeightDependsOnChildren.
	
	self assertAllSubbricksAreDirty: brick.
	brick doLayout.
	self assertAllSubbricksAreClean: brick.
	
	self assert: brick extent equals: 0@0