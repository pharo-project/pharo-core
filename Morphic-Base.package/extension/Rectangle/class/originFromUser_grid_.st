originFromUser: extentPoint grid: gridPoint 
	"Answer an instance of me that is determined by having the user 
	designate the top left corner. The width and height are determined by 
	extentPoint. The gridding for user selection is scaleFactor. Assumes that 
	the sender has determined an extent that is a proper multiple of 
	scaleFactor."

	^ Cursor origin showWhile: 
		[((self activeHand cursorPoint grid: gridPoint) extent: extentPoint) newRectFrom:
			[:f | (self activeHand cursorPoint grid: gridPoint) extent: extentPoint]].
