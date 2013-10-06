writeStream
	^( FileStream onHandle: self)
		 ifNil: [ self streamError ]