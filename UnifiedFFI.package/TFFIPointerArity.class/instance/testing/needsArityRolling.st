needsArityRolling
	self flag: #todo. ">1 because first arity is itself (since is going to be passed as a reference). Review this"
	^ self pointerArity > 1