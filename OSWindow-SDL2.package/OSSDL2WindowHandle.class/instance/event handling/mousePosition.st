mousePosition
	| x y |
	x := OSSDLIntValue new.
	y := OSSDLIntValue new.
	SDL2 mouseStateX: x y: y.
	^ ( x value ) @ (y value)