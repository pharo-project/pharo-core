initialization
unload

	(Smalltalk tools fileList respondsTo: #unregisterFileReader:) ifTrue: [
		Smalltalk tools fileList unregisterFileReader: self
	]