initialize

	super initialize.
	criticHolder := nil asReactiveVariable.
	ruleHolder := nil asReactiveVariable.
	browseModel := self instantiate: ButtonModel.
	transformModel := self instantiate: ButtonModel.
	falsepositiveModel := self instantiate: ButtonModel.
	self setFocusOrder.	
	self setBrowseModel.
	self setTransformModel.
	self setFalsepositiveModel.
	self registerForChanges.