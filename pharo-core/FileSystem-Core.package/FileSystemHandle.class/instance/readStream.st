public
readStream
	^ self isOpen ifTrue: [FileSystemReadStream onHandle: self]