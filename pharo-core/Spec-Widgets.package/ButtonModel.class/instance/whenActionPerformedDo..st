protocol-events
whenActionPerformedDo: aBlock
	"set a block to perform after that the button has been aclicked, and its action performed"

	self actionPerformedHolder whenChangedDo: aBlock