itemNormalStyleFor: aBrick

	aBrick
		normalColor: self itemNormalBackgroundColor;
		selectedColor: self itemHoveredBackgroundColor;
		checkedColor: self itemSelectedBackgroundColor;
		heightBlock: [ :anItem | self itemHeight ]