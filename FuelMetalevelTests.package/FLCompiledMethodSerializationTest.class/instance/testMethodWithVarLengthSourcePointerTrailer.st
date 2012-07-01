tests-trailer
testMethodWithVarLengthSourcePointerTrailer

	| trailer materializedCompiledMethod method |
	
	trailer := CompiledMethodTrailer new.
	trailer sourcePointer: 16r100000000000000.
	self assert: trailer kind =  #VarLengthSourcePointer.
	self assert: trailer kindAsByte = 32.
	method := (self class >> #fortyTwo) copyWithTrailerBytes: trailer.
	self assert: 42 = (method valueWithReceiver: self arguments: #()) value.
	materializedCompiledMethod := self materializedCompiledMethod: method.
	self assert: 42 = (materializedCompiledMethod valueWithReceiver: self arguments: #()) value

	