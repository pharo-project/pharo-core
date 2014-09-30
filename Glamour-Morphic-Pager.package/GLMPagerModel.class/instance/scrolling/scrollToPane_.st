scrollToPane: pageIndex
	"scrolls to specified pane specified by its index"

	self scrollTo: (self convertIndexToValue: pageIndex) smooth: true.
	