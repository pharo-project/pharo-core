testUnknownSelector
	self skip: 'Need to update parser behavior in order for this test to pass'.
	self
		compiling: 'griffle self reallyHopeThisIsntImplementedAnywere2' shouldRaise: OCUnknownSelectorWarning ;
		compiling: 'griffle [ self reallyHopeThisIsntImplementedAywhere2 ] value' shouldRaise: OCUnknownSelectorWarning