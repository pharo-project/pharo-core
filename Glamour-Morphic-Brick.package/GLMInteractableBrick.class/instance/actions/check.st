check
	self isChecked ifFalse: [
		isChecked := true.
		self changed.
	]