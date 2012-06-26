initialization
removeObsolete
	"FileList removeObsolete"
	self registeredFileReaderClasses copy 
		do:[:cls| cls isObsolete ifTrue:[self unregisterFileReader: cls]]