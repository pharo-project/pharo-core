primitiveExecute
	self changeClass 
		classComment: comment
		stamp: RBPlatform current changeStamp.
	SystemAnnouncer uniqueInstance 
		classCommented: self changeClass