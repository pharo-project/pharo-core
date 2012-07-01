internal
resetVanishTimer

	vanishTime := TimeStamp now + self vanishDelay.
	self resetAlpha.