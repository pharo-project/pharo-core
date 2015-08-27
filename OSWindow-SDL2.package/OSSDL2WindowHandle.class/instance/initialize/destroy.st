destroy

	handle ifNotNil: [ :validHandle | validHandle destroy].
	renderer := nil.
	handle := nil.
	osWindow := nil.