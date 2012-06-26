operations
copyTo: aReference
	self isDirectory
		ifTrue: [ aReference ensureDirectory ]
		ifFalse: [ 
			filesystem = aReference fileSystem
				ifTrue: [ filesystem copy: path to: aReference path ]
				ifFalse: [ filesystem copy: path toReference: aReference ] ]