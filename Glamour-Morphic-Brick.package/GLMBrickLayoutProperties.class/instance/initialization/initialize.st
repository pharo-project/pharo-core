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
	horizontalPercent := 10.
	verticalPercent := 10.
	minWidth := 0.
	minHeight := 0.
	maxWidthBlock := [ :aTrick | -1 ]. "negative value means undefined"
	maxHeightBlock := [ :aTrick | -1 ]. "negative value means undefined"