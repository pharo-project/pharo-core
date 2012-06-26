*Polymorph-Widgets
adoptPaneColor: paneColor
	"Change our color."
	
	super adoptPaneColor: paneColor.
	paneColor ifNil: [^self].
	self color: paneColor