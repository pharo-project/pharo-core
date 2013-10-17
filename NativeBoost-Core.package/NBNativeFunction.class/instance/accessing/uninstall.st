uninstall
	handle ifNotNil: [
		NativeBoost free: handle.
		handle := nil.
		]