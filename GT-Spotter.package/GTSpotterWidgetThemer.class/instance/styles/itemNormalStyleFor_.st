itemNormalStyleFor: aBrick

	aBrick normalColor: self itemNormalBackgroundColor.
	aBrick selectedColor: self itemHoveredBackgroundColor.
	aBrick checkedColor: self itemSelectedBackgroundColor.
	aBrick heightBlock: [ :anItem | self itemHeight ]