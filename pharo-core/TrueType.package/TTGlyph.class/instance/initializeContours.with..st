private-initialization
initializeContours: numContours with: endPoints
	"Initialize the contours for creation of the glyph."
	| startPt pts endPt |
	contours := Array new: numContours.
	startPt := -1.
	1 to: numContours do:[:i|
		endPt := endPoints at: i.
		pts := Array new: endPt - startPt.
		1 to: pts size do:[:j| pts at: j put: TTPoint new].
		contours at: i put: (TTContourConstruction on: pts).
		startPt := endPt].