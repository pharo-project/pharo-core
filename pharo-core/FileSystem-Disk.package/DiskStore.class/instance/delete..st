public
delete: path
	| pathString encodedPathString |
	pathString := self stringFromPath: path.
	encodedPathString := Primitives encode: pathString.
	(self isDirectory: path)
		ifTrue: [ Primitives deleteDirectory: encodedPathString ]
		ifFalse: [ 
			StandardFileStream
				retryWithGC: [ Primitives deleteFile: encodedPathString ]
				until: [ :result | result notNil ]
				forFileNamed: pathString ]