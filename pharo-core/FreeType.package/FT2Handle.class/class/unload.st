initialize-release
unload
	Smalltalk removeFromStartUpList: self.
	Smalltalk removeFromShutDownList: self.
