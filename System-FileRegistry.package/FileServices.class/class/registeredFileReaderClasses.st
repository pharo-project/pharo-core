adding
registeredFileReaderClasses
	FileReaderRegistry ifNil: [FileReaderRegistry := OrderedCollection new].
	^ FileReaderRegistry