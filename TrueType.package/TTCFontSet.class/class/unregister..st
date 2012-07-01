as yet unclassified
unregister: symbolName

	self registry removeKey: symbolName ifAbsent: [].
