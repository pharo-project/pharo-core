code generation
emitCodeForStorePop: stack encoder: encoder
	self type ~= 1 ifTrue:
		[self halt].
	encoder genStorePopInstVar: index.
	stack pop: 1