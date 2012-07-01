other
unregister: symbolName

	self registry removeKey: symbolName ifAbsent: [].
