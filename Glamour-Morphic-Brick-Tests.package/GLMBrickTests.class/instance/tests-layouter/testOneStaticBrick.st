testOneStaticBrick
	|brick|
	
	brick := self newBrickWithStaticExtent.
	
	self assert: brick isWidthDependsOnMyself.
	self assert: brick isHeightDependsOnMyself.
	self assertBrickClean: brick.
	self assert: brick extent equals: self staticExtent
	