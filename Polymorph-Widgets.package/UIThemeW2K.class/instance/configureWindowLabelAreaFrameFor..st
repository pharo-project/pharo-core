label-styles
configureWindowLabelAreaFrameFor: aWindow
	"Configure the layout frame for the label area for the given window."

	| windowBorderWidth frame |
	super configureWindowLabelAreaFrameFor: aWindow.
	windowBorderWidth := aWindow class borderWidth.
	aWindow labelArea
		cellPositioning: #center;
		layoutInset: (0@2 corner: -2@1).
	frame := LayoutFrame
		fractions: (0@0 corner: 1@0)
		offsets: (0 @ (aWindow labelHeight negated + 1) corner: -2 @ windowBorderWidth negated).
	aWindow labelArea layoutFrame: frame