position
	| x y |
	x := OSSDLIntValue new.
	y := OSSDLIntValue new.
	handle getPositionX: x y: y.
	^ x value @ y value