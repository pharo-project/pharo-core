initialize
	"in case it was added by earlier version"
	Smalltalk removeFromStartUpList: self. 
	"in order to update settings at startup"
	Smalltalk addToStartUpList: self before: BasicCommandLineHandler. 
