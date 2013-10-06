copyTo: aReference
	self isDirectory
		ifTrue: [ aReference ensureCreateDirectory ]
		ifFalse: [ 
			filesystem = aReference fileSystem
				ifTrue: [ filesystem copy: path to: aReference path ]
				ifFalse: [ filesystem copy: path toReference: aReference ] ]