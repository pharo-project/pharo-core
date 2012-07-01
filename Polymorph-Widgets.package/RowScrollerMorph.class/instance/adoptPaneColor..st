as yet unclassified
adoptPaneColor: paneColor
	"Update the fill styles, corner styles, label colour
	and expansion button indicator."
	
	super adoptPaneColor: paneColor.
	paneColor ifNil: [^self].
	self
		changed: #leftButtonLabel;
		changed: #rightButtonLabel