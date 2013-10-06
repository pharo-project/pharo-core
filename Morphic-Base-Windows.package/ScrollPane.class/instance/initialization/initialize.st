initialize
	
	"initialize the state of the receiver"
	super initialize.
	hasFocus := false.
	retractableScrollBar := false.
	self initializeScrollBars.
	self extent: self defaultExtent.
	self hideOrShowScrollBars.


