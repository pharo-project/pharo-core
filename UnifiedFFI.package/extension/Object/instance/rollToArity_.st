rollToArity: arity
	| rolledPointer |
		
	rolledPointer := self.
	"Start in 2 because first pointer is self"
	1 to: arity do: [ :index | rolledPointer := rolledPointer pointer ].
	^ rolledPointer