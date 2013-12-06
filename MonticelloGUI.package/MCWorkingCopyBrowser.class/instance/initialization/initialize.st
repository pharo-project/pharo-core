initialize
	super initialize.
	order := self class order.
	self registerToAnnouncer.
	
	workingCopyPattern := ''.
	repositoryPattern := ''.
	