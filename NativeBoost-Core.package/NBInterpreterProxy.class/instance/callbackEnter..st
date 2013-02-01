proxy functions
callbackEnter: callbackIDPtr

	" sqInt * callbackIDPtr 
	should point to a memory where jumpbuf will be stored "
	
	^ self gatedCall