printing
fullPrintOn: aStream
	aStream print: self; cr.
	(self decompile ifNil: ['--source missing--']) printOn: aStream indent: 0