currentImage
	^ self image pressed: (self buttonModel isPressed) selected: (self buttonModel isSelected) checked: (self buttonModel isChecked).