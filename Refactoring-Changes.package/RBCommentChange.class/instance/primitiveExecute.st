private
primitiveExecute
	self changeClass 
		classComment: comment
		stamp: RBPlatform current changeStamp.
	SystemChangeNotifier uniqueInstance 
		classCommented: self changeClass