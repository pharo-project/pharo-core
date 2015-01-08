vShrinkWrap
	"doesn't work with proportional layout. use linear layout instead"
	self verticalPercent: 0.
	self minHeightBlock: [ :brick | brick subbricks inject: 0 into: [ :each :height | height + each height + each layoutProperties verticalMargin ] ]