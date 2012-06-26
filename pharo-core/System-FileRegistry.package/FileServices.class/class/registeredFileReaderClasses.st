accessing
registeredFileReaderClasses
	FileReaderRegistry ifNil: [FileReaderRegistry := OrderedCollection new].
	^ FileReaderRegistry