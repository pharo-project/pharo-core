initialize
	
	method := nil asReactiveVariable.
	model := nil asReactiveVariable.
	retrievingMethod := nil asReactiveVariable.
	isSetting := false.
	
	super initialize.
	self registerEvents