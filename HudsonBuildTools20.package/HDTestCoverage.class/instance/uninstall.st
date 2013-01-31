actions
uninstall
	reference actualClass methodDictionary
		at: reference methodSymbol
		put: method.
	self flushCache