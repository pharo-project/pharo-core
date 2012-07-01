label-styles
createCloseBoxFor: aSystemWindow
	"Answer a button for closing the window."
	
	^(super createCloseBoxFor: aSystemWindow)
		setBalloonText: 'Close' translated