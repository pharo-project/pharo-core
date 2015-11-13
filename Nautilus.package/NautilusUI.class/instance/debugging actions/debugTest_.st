debugTest: aMethod
	(Breakpoint in: aMethod ast) 
		once.
	aMethod methodClass run: aMethod selector.