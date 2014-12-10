dropDownPaneStyleFor: aBrick

	aBrick layoutProperties: GLMBrickLayoutProperties new.
	aBrick layoutProperties verticalPercent: 100.	"will fill the rest of the space in spotter vertically"
	aBrick layoutProperties marginTop: self innerBorderWidth.
	aBrick color: self backgroundColor.
	aBrick height: 400