*Kernel-Extensions-Streaming
putOn: aStream

	(aStream isBinary ifTrue: [ self asByteArray ] ifFalse: [ self asString]) putOn: aStream
	
 