methods
removeMethod: selector
	self organization removeElement: selector.
	self sourceCode removeKey: selector.
