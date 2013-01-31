actions
install
	reference actualClass methodDictionary
		at: reference methodSymbol
		put: self.
	self flushCache