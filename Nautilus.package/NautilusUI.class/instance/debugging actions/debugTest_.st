debugTest: aMethod
	(Breakpoint inNode: aMethod ast) 
		level: nil;
		once.
	aMethod methodClass run: aMethod selector.