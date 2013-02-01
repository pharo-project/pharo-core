initialize-release
initializeLabelAreaFor: aWindow
	
	| windowBorderWidth frame |
	super initializeLabelAreaFor: aWindow.
	windowBorderWidth := aWindow class borderWidth.
	aWindow labelArea
		layoutInset: (0@windowBorderWidth corner: 1@1).
	frame := (0@0 corner: 1@0) asLayoutFrame
		topOffset: aWindow labelHeight negated + 1;
		bottomRightOffset: -2 @ windowBorderWidth negated.
	aWindow labelArea layoutFrame: frame