debugTest: aMethod
	Breakpoint new
		node: aMethod ast; 
		once;
		install.
	aMethod methodClass run: aMethod selector.