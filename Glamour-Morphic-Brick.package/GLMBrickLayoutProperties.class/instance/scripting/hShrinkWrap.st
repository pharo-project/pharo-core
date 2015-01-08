hShrinkWrap
	"doesn't work with proportional layout. use linear layout instead"
	self horizontalPercent: 0.
	self minWidthBlock: [ :brick | brick subbricks inject: 0 into: [ :width :each | width + each width + each layoutProperties horizontalMargin ] ]