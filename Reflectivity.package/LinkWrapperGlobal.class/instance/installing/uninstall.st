uninstall
	self usingMethods do: #removeLink.
	Smalltalk globals removeKey: self key.
	Smalltalk globals add: self wrappedVariable.