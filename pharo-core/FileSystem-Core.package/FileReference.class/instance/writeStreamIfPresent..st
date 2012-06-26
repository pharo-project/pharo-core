streams
writeStreamIfPresent: presentBlock
	^ self isFile 
		ifTrue: [ presentBlock value ]
		ifFalse: [ self writeStream ]