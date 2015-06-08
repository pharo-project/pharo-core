basicOpenForWrite: writeMode 
	"Open the file with the given name. If writeMode is true, allow writing, otherwise open the file in read-only mode."
	| fullName |
	self closed ifFalse: [ Error signal: 'file already open' ].
	
	fullName := FilePathEncoder encode: name.
	^ self class
		retryWithGC: [ self primOpen: fullName writable: writeMode ]
		until:[ :id | id notNil ] 
		forFileNamed: fullName