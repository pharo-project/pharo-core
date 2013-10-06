changeColor
	"Change the color of the receiver -- triggered, e.g. from a menu"
	
	|d|
	d := self openModal: (
		ColorSelectorDialogWindow new
			title: 'Choose color';
			selectedColor: self color).
	d  cancelled
		ifFalse: [self fillStyle: d selectedColor]
	
	