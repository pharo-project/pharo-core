*Compiler-Kernel
readFrom: textStringOrStream
	"Create an object based on the contents of textStringOrStream."

	| object |
	(self class evaluatorClass couldEvaluate: textStringOrStream)
		ifFalse: [^ self error: 'expected String, Stream, or Text'].
	object := self class evaluatorClass evaluate: textStringOrStream.
	(object isKindOf: self) ifFalse: [self error: self name, ' expected'].
	^object