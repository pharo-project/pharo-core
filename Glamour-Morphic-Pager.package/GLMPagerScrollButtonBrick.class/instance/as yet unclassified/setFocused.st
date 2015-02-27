setFocused

	focused ifFalse: [
		self checkedImage: checkedFocusedIcon.
		self check.
		focused := true ]