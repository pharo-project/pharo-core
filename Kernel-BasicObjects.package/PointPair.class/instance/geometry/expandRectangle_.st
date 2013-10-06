expandRectangle: aRectangle
	"Answer a rectangle with sides, expanded by receiver. "
	
	| left right top bottom |
	left := aRectangle left - point1 x.
	right :=aRectangle right + point2 x.
	top := aRectangle top - point1 y.
	bottom := aRectangle bottom + point2 y.
	^ Rectangle origin:  left@top extent: ((right-left) @ (bottom-top)) 
