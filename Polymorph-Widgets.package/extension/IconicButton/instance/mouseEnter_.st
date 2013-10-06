mouseEnter: evt
	"Remember the old border style."
	
	(self hasProperty: #oldBorder) ifFalse: [
		self setProperty: #oldBorder toValue: self borderStyle].
	self borderStyle: self mouseOverBorderStyle