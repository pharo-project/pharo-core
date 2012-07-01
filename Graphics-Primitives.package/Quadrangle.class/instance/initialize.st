initialization
initialize
	"Initialize the region to a null Rectangle, the borderWidth to 1, the 
	borderColor to black, and the insideColor to white."

	super initialize.
	origin := 0 @ 0.
	corner := 0 @ 0.
	borderWidth := 1.
	borderColor := Color black.
	insideColor := Color white.
