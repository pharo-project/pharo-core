compile: code classified: category notifying: requestor trailer: bytes ifFail: aBlock
	"Compile code without logging the source in the changes file"

	| methodNode |
	methodNode := self compiler
		compile: code
		in: self
		classified: category
		notifying: requestor
		ifFail: aBlock.
	^ methodNode generate: bytes