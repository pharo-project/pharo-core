label-styles
configureWindowLabelAreaFrameFor: aWindow
	"Configure the layout frame for the label area for the given window."

	|frame windowBorderWidth|
	aWindow labelArea ifNil: [^ self].	
	windowBorderWidth := aWindow class borderWidth.
	aWindow labelArea
		layoutPolicy: RowLayout new;
		cellPositioning: #topCenter;
		hResizing: #spaceFill;
		wrapCentering: #topLeft;
		layoutInset: (0@windowBorderWidth corner: 0@1).
	frame := LayoutFrame
		fractions: (0@0 corner: 1@0)
		offsets: (0 @ (aWindow labelHeight negated)
					corner: 0 @ 0).
	aWindow labelArea layoutFrame: frame