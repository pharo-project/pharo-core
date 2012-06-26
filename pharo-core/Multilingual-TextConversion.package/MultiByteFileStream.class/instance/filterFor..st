remnant
filterFor: aFileStream

	| rw |
	
	path := aFileStream path.
	
	rw := aFileStream isReadOnly not.
	aFileStream close.
	
	self open: path forWrite: rw.
	
	^self.
