emitValue: methodBuilder

	self isContext 
		ifTrue: [methodBuilder pushThisContext]
		ifFalse:[methodBuilder pushReceiver]
	