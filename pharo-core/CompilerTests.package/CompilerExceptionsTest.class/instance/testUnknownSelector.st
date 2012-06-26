tests
testUnknownSelector

	self
		compiling: 'griffle self reallyHopeThisIsntImplementedAnywhere' shouldRaise: UnknownSelector;
		compiling: 'griffle [ self reallyHopeThisIsntImplementedAnywhere ] value' shouldRaise: UnknownSelector