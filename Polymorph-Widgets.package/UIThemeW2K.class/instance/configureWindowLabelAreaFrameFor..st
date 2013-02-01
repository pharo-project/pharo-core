label-styles
configureWindowLabelAreaFrameFor: aWindow
	"Configure the layout frame for the label area for the given window."

	| windowBorderWidth frame |
	super configureWindowLabelAreaFrameFor: aWindow.
	windowBorderWidth := aWindow class borderWidth.
	aWindow labelArea
		cellPositioning: #center;
		layoutInset: (0@2 corner: -2@1).
	frame := (0@0 corner: 1@0) asLayoutFrame
		topOffset: aWindow labelHeight negated + 1;
		bottomRightOffset: -2 @ windowBorderWidth negated.
	aWindow labelArea layoutFrame: frame