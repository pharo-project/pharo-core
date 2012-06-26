accessing
registerFileReader: aProviderClass
	"register the given class as providing services for reading files"

	| registeredReaders |
	registeredReaders := self registeredFileReaderClasses.
	(registeredReaders includes: aProviderClass) 
			ifFalse: [ registeredReaders addLast: aProviderClass ]