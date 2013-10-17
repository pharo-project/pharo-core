simulateValueWithArguments: anArray caller: aContext
	| newContext sz |
	(anArray class ~~ Array
	 or: [numArgs ~= anArray size]) ifTrue:
		[^ContextPart primitiveFailToken].
	newContext := (MethodContext newForMethod: outerContext method)
						setSender: aContext
						receiver: outerContext receiver
						method: outerContext method
						closure: self
						startpc: startpc.
	sz := self basicSize.
	newContext stackp: sz + numArgs.
	1 to: numArgs do:
		[:i| newContext at: i put: (anArray at: i)].
	1 to: sz do:
		[:i| newContext at: i + numArgs put: (self at: i)].
	^newContext