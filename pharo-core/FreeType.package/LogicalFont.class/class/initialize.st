class initialization
initialize
	"
	self initialize.
	"
	Smalltalk addToShutDownList: self.  "should it be at a particular place in the list?"