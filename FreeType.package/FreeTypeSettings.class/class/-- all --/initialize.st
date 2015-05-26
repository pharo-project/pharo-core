initialize
	"
	self initialize
	"
	Smalltalk removeFromStartUpList: self.
	Smalltalk addToStartUpList: self . 