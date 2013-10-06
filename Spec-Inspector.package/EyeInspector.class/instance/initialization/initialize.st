initialize
	super initialize.
	self whenWindowChanged: [ :myWindow | 
		myWindow whenClosedDo: [ self close ] ].