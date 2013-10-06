initialize

	debugger := nil asValueHolder.
	super initialize.
	
	self whenWindowChanged: [:w | w whenClosedDo: [ self close ] ].