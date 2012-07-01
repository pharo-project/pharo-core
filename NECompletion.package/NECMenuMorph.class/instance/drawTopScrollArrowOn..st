drawing
drawTopScrollArrowOn: aCanvas 
	| aPoligon point arrowHeight |
	arrowHeight := self class scrollArrowSize.
	point := self bounds topLeft translateBy: 6 @ 11.
	aPoligon := Array 
				with: point
				with: (point translateBy: arrowHeight @ 0)
				with: (point translateBy: arrowHeight / 2 @ arrowHeight negated).
	aCanvas 
		drawPolygon: aPoligon 
		fillStyle: self class scrollColor. 
	