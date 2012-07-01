visitor-double dispatching
acceptMessageNode: aMessageNode 
	| newFormatter code |
	newFormatter := self copy.
	code := newFormatter format: aMessageNode receiver.
	codeStream nextPutAll: code.
	codeStream nextPut: $ .
	newFormatter isMultiLine
		ifTrue: [lineStart := codeStream position - newFormatter lastLineLength].
	self indent: (newFormatter isMultiLine ifTrue: [2] ifFalse: [1])
		while: [self formatMessage: aMessageNode cascade: false]