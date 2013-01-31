initialization
initialize
	"Initialize the receiver from the current theme."
	
	super initialize.
	value := 0.
	start := 0.
	end := 100.

	self 
		fillStyle: (self theme progressBarFillStyleFor: self);
		borderStyle: (self theme progressBarBorderStyleFor: self);
		barFillStyle: (self theme progressBarProgressFillStyleFor: self);
		extent: DefaultWidth@DefaultHeight  + (2 * self borderWidth).