setVShrinking: aBrick
	"my height is the sum of all subbricks height  + vertical padding"
	aBrick height: [ :brick | brick subbricks inject: aBrick layoutProperties verticalPadding into: [ :height :each | height + each height + each layoutProperties verticalMargin ] ]