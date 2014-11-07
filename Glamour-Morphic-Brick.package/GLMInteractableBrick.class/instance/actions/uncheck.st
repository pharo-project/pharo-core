uncheck
	self isChecked ifTrue: [
		isChecked := false.
		self changed.
	]