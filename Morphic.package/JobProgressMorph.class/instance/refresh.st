private
refresh

	lastRefresh := Time millisecondClockValue.	
	self width: (labelMorph fontToUse widthOfString: labelMorph contents) + 25.
	self currentWorld displayWorld.