compiling
recompile: selector from: oldClass
	"Compile the method associated with selector in the receiver's method dictionary."
	"ar 7/10/1999: Use oldClass compiledMethodAt: not self compiledMethodAt:"
	| method trailer methodNode |
	method := oldClass compiledMethodAt: selector.
	trailer := method trailer.
	methodNode := self compilerClass new
				compile: (oldClass sourceCodeAt: selector)
				in: self
				notifying: nil
				ifFail: [^ self].   "Assume OK after proceed from SyntaxError"
	selector == methodNode selector ifFalse: [self error: 'selector changed!'].
	self basicAddSelector: selector withMethod: (methodNode generate: trailer).
