initialize
	super initialize.
	
	marginBottom := 0.
	marginLeft := 0.
	marginRight := 0.
	marginTop := 0.
	paddingBottom := 0.
	paddingLeft := 0.
	paddingRight := 0.
	paddingTop := 0.
	horizontalPercent := 25.
	verticalPercent := 25.
	zIndex := 1. "the lowest one"
	maxWidthBlock := [ :aTrick | -1 ]. "negative value means undefined"
	maxHeightBlock := [ :aTrick | -1 ]. "negative value means undefined"
	minWidthBlock := [ :aTrick | -1 ]. "negative value means undefined"
	minHeightBlock := [ :aTrick | -1 ]. "negative value means undefined"
	floating := #none