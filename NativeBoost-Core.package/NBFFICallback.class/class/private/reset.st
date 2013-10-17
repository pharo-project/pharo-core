reset 
	self checkSession.
	
	cbEnter ifNotNil: [
		
		cbEnter uninstall.
		cbLeave uninstall.
		numArgs := cbEnter := cbLeave := trunkCode := nil.
	].
