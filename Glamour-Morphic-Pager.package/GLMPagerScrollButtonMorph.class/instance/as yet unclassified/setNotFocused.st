setNotFocused

	focused ifTrue: [
		self image state checked: checkedIcon.
		self buttonModel uncheck.
		focused := false.
	]