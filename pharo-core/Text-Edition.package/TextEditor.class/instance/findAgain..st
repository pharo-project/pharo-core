typing/selecting keys
findAgain: aKeyboardEvent 
	"Find the desired text again.  1/24/96 sw"
	self closeTypeIn.
	self findAgain.
	^ true