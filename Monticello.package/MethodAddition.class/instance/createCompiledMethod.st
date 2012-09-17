as yet unclassified
createCompiledMethod
	methodAndNode := myClass compile: text asString classified: category notifying: requestor
							trailer: myClass defaultMethodTrailer ifFail: [^nil].
	selector := methodAndNode selector.
	compiledMethod := methodAndNode method.
	self writeSourceToLog.
	priorMethodOrNil := myClass compiledMethodAt: selector ifAbsent: [nil].