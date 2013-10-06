class initialization
initialize 
	Smalltalk 
		removeFromStartUpList: self;
		addToStartUpList: self after: SmalltalkImage 