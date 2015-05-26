getCurrentPoint

	| x y |
	"since we use pointers to floats we must create a copy of original values to not scratch them"
	x := 0.0 shallowCopy.
	y := 0.0 shallowCopy.
	self primGetCurrentPointX: x Y: y.
	^ x @ y
