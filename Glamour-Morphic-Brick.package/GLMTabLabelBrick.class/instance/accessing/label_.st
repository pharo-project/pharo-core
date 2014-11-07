label: aTrickMorph
	"Change the label contents"
	
	aTrickMorph layoutProperties horizontalPercent: 100.
	self layoutProperties maxWidthBlock: aTrickMorph layoutProperties maxWidthBlock.

	self
		normalLabel: aTrickMorph;
		selectedLabel: aTrickMorph;
		selected: self isSelected