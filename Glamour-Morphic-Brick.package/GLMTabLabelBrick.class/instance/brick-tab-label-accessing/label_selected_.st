label: aBrick selected: aSelectedBrick
	"Change the label contents"

	aBrick vSpaceFill.
	aSelectedBrick vSpaceFill.
	
	self maxWidth: aBrick layout maxWidth.
	
	self
		normalLabel: aBrick;
		selectedLabel: aSelectedBrick;
		selected: self isSelected