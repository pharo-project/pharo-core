context stack (message list)
fullyExpandStack
	"Expand the stack to include all of it, rather than the first four or five
	contexts."

	self okToChange ifFalse: [^ self].
	self newStack: (contextStackTop stackOfSize: contextStack size + 100000).
	self changed: #contextStackList