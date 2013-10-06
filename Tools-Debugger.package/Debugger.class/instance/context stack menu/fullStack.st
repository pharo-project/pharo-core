fullStack
	"Change from displaying the minimal stack to a full one."

	contextStack last sender isNil
		ifTrue:
			[self changed: #flash]
		ifFalse:
			[| oldContextStackIndex |
          oldContextStackIndex := contextStackIndex.
          self fullyExpandStack.
          oldContextStackIndex = contextStackIndex
               ifFalse: [self toggleContextStackIndex: oldContextStackIndex]]