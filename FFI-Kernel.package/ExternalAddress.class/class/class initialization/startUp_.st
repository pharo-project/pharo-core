startUp: resuming
	resuming ifTrue:[self allInstancesDo:[:addr| addr beNull]].