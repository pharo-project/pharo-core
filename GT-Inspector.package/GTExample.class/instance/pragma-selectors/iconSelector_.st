iconSelector: aSelector
	self initializeIconWith: [ 
		form := (self provider perform: aSelector) ]