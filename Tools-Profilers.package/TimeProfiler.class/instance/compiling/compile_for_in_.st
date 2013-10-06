compile: codeString for: anObject in: evalContext

	| methodNode |
	methodNode := Smalltalk compiler
		compileNoPattern: ('self runBlock: [', codeString, ']')
		in: anObject class
		context: evalContext
		notifying: self
		ifFail: [^nil].
	^ methodNode generateWithSource.