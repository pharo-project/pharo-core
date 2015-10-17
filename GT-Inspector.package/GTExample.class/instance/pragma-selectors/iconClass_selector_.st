iconClass: aClassOrClassName selector: aSelector
	self classNamed: aClassOrClassName do: [ :class | 
		form := (class perform: aSelector) ]