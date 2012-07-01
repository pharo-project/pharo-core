menu
changeBorderColor: evt
	UIManager default chooseColor: self borderColor for: [:newColor |
		self borderColor: newColor]