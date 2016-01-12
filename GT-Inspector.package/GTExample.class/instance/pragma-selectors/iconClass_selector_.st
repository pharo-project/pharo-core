iconClass: aClassOrClassName selector: aSelector
	self initializeIconWith: [ 
		self classNamed: aClassOrClassName do: [ :class | 
			form := (class perform: aSelector) ] ]