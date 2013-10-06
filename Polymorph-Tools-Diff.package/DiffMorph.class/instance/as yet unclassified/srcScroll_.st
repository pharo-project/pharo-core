srcScroll: scrollValue
	"Called from src when scrolled by keyboard etc.."

	self scrollbarMorph value: scrollValue.
	self dstMorph vScrollBarValue: scrollValue.
	self updateJoinOffsets