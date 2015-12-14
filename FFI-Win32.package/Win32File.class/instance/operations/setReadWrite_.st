setReadWrite: fileString
	"Clear FILE_READ_ONLY (bit 1)"
	| attrs |
	attrs := (self getFileAttributes: fileString).
	attrs < 0 ifTrue: [ self error: 'Cannot get file attributes. System error.' ].
	(self setFileAttributes: fileString lpAttrs: (attrs bitClear: 1)) = 0 ifTrue: [ 
		self error: 'Cannot set file attributes. System error.'
	].