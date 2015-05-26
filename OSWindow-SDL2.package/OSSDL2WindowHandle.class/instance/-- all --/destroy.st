destroy
	handle ifNotNil: [
		renderer ifNotNil: [ renderer destroy ].
		handle destroy.
		handle := nil.
	]