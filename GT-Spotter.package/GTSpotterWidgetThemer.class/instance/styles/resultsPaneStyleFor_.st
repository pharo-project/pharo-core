resultsPaneStyleFor: aBrick

	aBrick band layoutPolicy: GLMBrickVerticalLinedStackLayout new.
	aBrick layoutProperties horizontalPercent: self resultsPaneWidth.
	aBrick color: self backgroundColor.
	aBrick verticalScrollbar bar color: self resultsScrollbarColor.
	aBrick verticalScrollbar width: self resultsScrollbarWidth.
	aBrick verticalScrollbar layoutProperties marginRight: self resultsScrollbarMarginRight.