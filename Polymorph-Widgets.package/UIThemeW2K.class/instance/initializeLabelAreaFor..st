initialize-release
initializeLabelAreaFor: aWindow
	
	| windowBorderWidth frame |
	super initializeLabelAreaFor: aWindow.
	windowBorderWidth := aWindow class borderWidth.
	aWindow labelArea
		layoutInset: (0@windowBorderWidth corner: 1@1).
	frame := LayoutFrame
		fractions: (0@0 corner: 1@0)
		offsets: (0 @ (aWindow labelHeight negated + 1) corner: -2 @ windowBorderWidth negated).
	aWindow labelArea layoutFrame: frame