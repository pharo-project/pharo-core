partiallyExpandStack
	"Expand the stack to include a bit more of it, rather than the first four or five
	contexts."

	self okToChange ifFalse: [^ self].
	self newStack: (contextStackTop stackOfSize: contextStack size + 20).
	self changed: #contextStackList