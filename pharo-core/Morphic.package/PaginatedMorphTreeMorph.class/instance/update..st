updating
update: aSymbol
	aSymbol == #pageSize ifTrue: [^ self pageSize: model pageSize].
	aSymbol == #chunkSize ifTrue: [^ self chunkSize: model chunkSize].
	^ super update: aSymbol