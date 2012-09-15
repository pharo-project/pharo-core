as yet unclassified
doSilently: aBlock
	self flag: #todo. "Remove Me"
	self suspendAllWhile: aBlock