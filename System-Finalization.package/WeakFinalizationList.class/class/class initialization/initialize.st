initialize 
	Smalltalk 
		removeFromStartUpList: self;
		addToStartUpList: self after: SmalltalkImage.
	SessionManager default registerSystemClassNamed: self name.