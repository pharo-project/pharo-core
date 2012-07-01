friend
saveStateOf: aStream

	| inst |
	inst :=  state shallowCopy.
	inst streamPosition: aStream position.
	^ inst.
