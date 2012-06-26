private
flipAroundY
	bounds := (bounds origin x @ bounds corner y negated) corner:
				(bounds corner x @ bounds origin y negated).
	contours := nil.