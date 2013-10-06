adoptPaneColor: paneColor
	"Make the receiver's color a bit whiter than the pane color."
	
	super adoptPaneColor: paneColor.
	paneColor ifNil: [^self].
	self color: (paneColor alphaMixed: 0.4 with: Color white)