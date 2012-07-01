label-styles
createCloseBoxFor: aSystemWindow
	"Answer a button for closing the window."
	
	^aSystemWindow createBox
		labelGraphic: self windowCloseForm;
		extent: aSystemWindow boxExtent;
		actionSelector: #closeBoxHit;
		setBalloonText: 'Close this window' translated