expandRectangle: aRectangle
	"Answer a rectangle whose size has been expanded by the receiver which represents each rectangle corner. The limitation is that since a rectangle topleft is always less than its bottomright you may have a some cases that are not possible to express. For that you should use a pointpair object instead of a rectangle."
	
	| left right top bottom |
	left := aRectangle left - self left.
	right :=aRectangle right + self right.
	top := aRectangle top - self top.
	bottom := aRectangle bottom + self bottom.
	^ Rectangle origin:  left@top extent: ((right-left) @ (bottom-top)) 
