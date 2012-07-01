file reader registration
unregisterFileReader: aProviderClass
	"unregister the given class as providing services for reading files"

	self registeredFileReaderClasses remove: aProviderClass ifAbsent: [nil]