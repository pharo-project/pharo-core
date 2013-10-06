recompile: selector from: oldClass
	"Compile the method associated with selector in the receiver's method dictionary."

	| method methodNode |
	method := oldClass compiledMethodAt: selector.
	methodNode := self compiler
				compile: (oldClass sourceCodeAt: selector)
				in: self
				notifying: nil
				ifFail: [^ self].   "Assume OK after proceed from SyntaxError"
	selector == methodNode selector ifFalse: [self error: 'selector changed!'].
	self basicAddSelector: selector withMethod: (methodNode generate: method trailer).
