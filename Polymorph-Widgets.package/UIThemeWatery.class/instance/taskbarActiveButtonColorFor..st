basic-colors
taskbarActiveButtonColorFor: aButton
	"Answer the colour for the given active taskbar button."

	^self settings scrollbarColor alphaMixed: 0.7 with: Color white