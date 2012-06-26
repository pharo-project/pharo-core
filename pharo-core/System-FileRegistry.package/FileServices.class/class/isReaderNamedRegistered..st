accessing
isReaderNamedRegistered: aSymbol
	"return if a given reader class has been registered. Note that this is on purpose that the argument is
	a symbol and not a class"

	 ^ (self registeredFileReaderClasses collect: [:each | each name]) includes: aSymbol
