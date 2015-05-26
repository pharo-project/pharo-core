binaryReadStream
	^ (FileStream onHandle: self)
		ifNil: [ self streamError ]
		ifNotNilDo: [ :stream | 
			stream
				binary;
				yourself ]