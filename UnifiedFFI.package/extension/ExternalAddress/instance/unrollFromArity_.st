unrollFromArity: arity
	"This will 'unroll' a pointer from a certain arity. See #rollToArity: for a better explanation."
	| rolledPointer |
		
	rolledPointer := self.
	"Start in 2 because first pointer is self"
	2 to: arity do: [ :index | rolledPointer := rolledPointer pointerAt: 1 ].
	^ rolledPointer	