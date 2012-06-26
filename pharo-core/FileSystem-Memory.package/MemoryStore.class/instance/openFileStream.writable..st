public
openFileStream: path writable: anObject
	| bytes |
	bytes := self nodeAt: path ifPresent: [ :array | array ] ifAbsent: [ self createFile: path ].
	^ MemoryFileStream on: bytes store: self path: path