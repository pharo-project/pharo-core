streams
writeStreamDo: doBlock ifPresent: presentBlock
	^ self isFile
		ifTrue: [ presentBlock value ]
		ifFalse: [ self writeStreamDo: doBlock ]