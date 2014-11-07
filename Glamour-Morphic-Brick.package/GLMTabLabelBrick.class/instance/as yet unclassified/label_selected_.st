label: aTrickMorph selected: selectedTrickMorph
	"Change the label contents"

	aTrickMorph layoutProperties horizontalPercent: 100.
	selectedTrickMorph layoutProperties horizontalPercent: 100.
	
	self layoutProperties maxWidthBlock: aTrickMorph layoutProperties maxWidthBlock.
	
	self
		normalLabel: aTrickMorph;
		selectedLabel: selectedTrickMorph;
		selected: self isSelected