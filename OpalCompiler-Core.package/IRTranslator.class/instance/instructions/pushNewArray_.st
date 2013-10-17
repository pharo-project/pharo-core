pushNewArray: aSize 

	self doPending.
	gen pushNewArray: aSize.
	gen mapBytesTo: currentInstr.
