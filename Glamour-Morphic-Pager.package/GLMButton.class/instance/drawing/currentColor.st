currentColor
	^ self image pressedColor: (self buttonModel isPressed) selectedColor: (self buttonModel isSelected) checkedColor: (self buttonModel isChecked).