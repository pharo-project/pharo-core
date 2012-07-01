accessing
rationale
	^ 'Checks for methods that don''t use blocks in the special messages. People new to Smalltalk might write code such as: "aBoolean ifTrue: (self doSomething)" instead of the correct version: "aBoolean ifTrue: [self doSomething]". Even if these pieces of code could be correct, they cannot be optimized by the compiler.'