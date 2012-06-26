private-initialization
buildContours
	"Build the contours in the receiver glyph.
	The contour is constructed by converting the points
	form each contour into an absolute value and then
	compressing the contours into PointArrays."
	| tx ty |
	tx := ty := 0.
	contours := contours collect:[:contour| | points |
		points := contour points.
		points do:[:pt|
			pt x: (tx := tx + pt x).
			pt y: (ty := ty + pt y)].
		contour asCompressedPoints].