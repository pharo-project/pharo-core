instance creation
arrowPrototype

	| aa |
	aa := PolygonMorph vertices: (Array with: 5@40 with: 5@8 with: 35@8 with: 35@40) 
		color: Color black 
		borderWidth: 2 
		borderColor: Color black.
	aa beSmoothCurve; makeOpen; makeForwardArrow.		"is already open"
	aa dashedBorder: {10. 10. Color red}.
		"A dash spec is a 3- or 5-element array with
		{ length of normal border color.
		length of alternate border color.
		alternate border color}"
	aa computeBounds.
	^ aa