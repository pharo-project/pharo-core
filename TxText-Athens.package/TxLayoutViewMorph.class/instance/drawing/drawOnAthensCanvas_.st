drawOnAthensCanvas: aCanvas
	"before rendering transform from a global coordinates (Morphic) to relative coordinates (Athens)"

	aCanvas pathTransform restoreAfter: [ 
		aCanvas pathTransform 
			translateBy: self innerBounds origin.
		layoutView renderOn: aCanvas ].