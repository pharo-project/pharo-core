class initialization
initialize
	"Initialize the receiver"
	"OSPlatform initialize"

	Smalltalk removeFromStartUpList: self.
	Smalltalk addToStartUpList: self after: Delay.
	Smalltalk removeFromShutDownList: self.
	Smalltalk addToShutDownList: self after: DisplayScreen.
	self startUp: true.