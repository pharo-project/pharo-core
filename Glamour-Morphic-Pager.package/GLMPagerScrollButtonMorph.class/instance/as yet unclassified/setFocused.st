setFocused

	focused ifFalse: [
		self image state checked: checkedFocusedIcon.
		self buttonModel check.
		focused := true.
	]