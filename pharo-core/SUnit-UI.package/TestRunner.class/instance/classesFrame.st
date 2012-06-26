building
classesFrame
	^LayoutFrame new
		leftFraction: 0.25 offset: 0;
		topFraction: 0 offset: (UITheme current textFont height + 13);
		rightFraction: 0.5 offset: 0;
		bottomFraction: 1 offset: self buttonHeight negated