initialize
	"Initialize the receiver"
	"OSPlatform initialize"

	Smalltalk 
		removeFromStartUpList: self;
		addToStartUpList: self after: Delay;
		removeFromShutDownList: self;
		addToShutDownList: self after: DisplayScreen.
	self startUp: true.