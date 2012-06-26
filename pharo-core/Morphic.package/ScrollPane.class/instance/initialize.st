initialization
initialize
	
	"initialize the state of the receiver"
	super initialize.
	""
	hasFocus := false.
	retractableScrollBar := false.
	scrollBarOnLeft := (self theme settings scrollBarsOnRight) not.
	self initializeScrollBars.
	""
	self extent: self defaultExtent.
	self hideOrShowScrollBars.


