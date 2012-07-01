initialization
initialize
	"Initialization code for RotatingStringMorph"

	super initialize.

	initialContents := ''.
	rotating := false.
	self on: #mouseEnter send: #mouseEnter: to: self.
	self on: #mouseLeave send: #mouseLeave: to: self.