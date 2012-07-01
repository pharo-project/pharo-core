initialization
initialize

	list := #().
	listIndex := 0.
	isResizeable := true.
	listBlock := [ :regex| #() ].
	displayBlock := [:e | e printString ].
	browseBlock :=  [:tmp | tmp browse ].
	pattern := '.' asRegexIgnoringCase.
	
	super initialize.
