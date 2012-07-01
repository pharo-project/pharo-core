stop conditions
plainTab
	| oldX |
	oldX := destX.
	super plainTab.
	fillBlt == nil ifFalse:
		[fillBlt destX: oldX destY: destY width: destX - oldX height: font height; copyBits]