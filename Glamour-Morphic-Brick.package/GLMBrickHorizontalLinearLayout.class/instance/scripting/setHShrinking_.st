setHShrinking: aBrick
	"my width is the sum of all subbricks width + horizontal padding"
	aBrick width: [ :brick | brick subbricks inject: aBrick layoutProperties horizontalPadding into: [ :width :each | width + each width + each layoutProperties horizontalMargin ] ]