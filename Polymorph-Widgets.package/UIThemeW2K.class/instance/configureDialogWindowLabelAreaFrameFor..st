label-styles
configureDialogWindowLabelAreaFrameFor: aWindow
	"Configure the layout frame for the label area for the given dialog window."

	|frame|
	self configureWindowLabelAreaFrameFor: aWindow.
	aWindow labelArea ifNil: [^ self].	
	frame := aWindow labelArea layoutFrame.
	frame
		leftOffset: -1;
		rightOffset: -1