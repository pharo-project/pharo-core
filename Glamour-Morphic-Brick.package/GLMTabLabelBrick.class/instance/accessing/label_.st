label: aBrick
	"Change the label contents"
	
	aBrick hSpaceFill.
	self maxWidth: aBrick layout maxWidth.

	self
		normalLabel: aBrick;
		selectedLabel: aBrick;
		selected: self isSelected