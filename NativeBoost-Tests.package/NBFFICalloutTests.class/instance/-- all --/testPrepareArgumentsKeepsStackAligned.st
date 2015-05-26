testPrepareArgumentsKeepsStackAligned


	| sp |
		 
	sp := self passString: '12345'.
	
	self assert: (sp \\ NativeBoost forCurrentPlatform stackAlignment) = 0.

