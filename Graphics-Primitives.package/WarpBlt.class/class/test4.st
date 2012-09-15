examples
test4
	"Display restoreAfter: [WarpBlt test4]"
	"The Squeak Release Mandala This version does smoothing"
	"Move the mouse near the center ofhe square.
	Up and dn affects shrink/grow
	Left and right affect rotation angle"
	| warp pts p0 p box |
	box := 100 @ 100 extent: 300 @ 300.
	Display 
		border: (box expandBy: 2)
		width: 2.
	warp := (WarpBlt toForm: Display)
		clipRect: box;
		sourceForm: Display;
		cellSize: 2;
		combinationRule: Form over.	"installs a colormap"
	p0 := box center.
	[ Sensor anyButtonPressed ] whileFalse: 
		[ p := Sensor cursorPoint.
		pts := (box insetBy: p y - p0 y) innerCorners collect: 
			[ :pt | 
			pt 
				rotateBy: (p x - p0 x) / 50.0
				about: p0 ].
		warp 
			copyQuad: pts
			toRect: box ]