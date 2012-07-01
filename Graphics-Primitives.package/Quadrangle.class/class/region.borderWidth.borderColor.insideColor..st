instance creation
region: aRectangle borderWidth: anInteger borderColor: aMask1 insideColor: aMask2
	"Answer an instance of me with rectangle, border width and color, and 
	inside color determined by the arguments."

	^super new
		setRegion: aRectangle
		borderWidth: anInteger
		borderColor: aMask1
		insideColor: aMask2