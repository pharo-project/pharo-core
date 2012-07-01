compiling
compile: code classified: category notifying: requestor trailer: bytes ifFail: failBlock
	"Compile code without logging the source in the changes file"

	| methodNode |
	methodNode  := self compilerClass new
				compile: code
				in: self
				classified: category 
				notifying: requestor
				ifFail: failBlock.
	^ CompiledMethodWithNode generateMethodFromNode: methodNode trailer: bytes.