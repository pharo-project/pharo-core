examples
test5
	"Display restoreAfter: [WarpBlt test5]"
	"Demonstrates variable scale and rotate"
	| warp pts r1 p0 p |
	UIManager default 
		informUser: 'Choose a rectangle with interesting stuff' translated
		during: 
			[ r1 := Rectangle fromUser.
			Sensor waitNoButton ].
	UIManager default 
		informUser: 'Now click down and up
and move the mouse around the dot' translated
		during: 
			[ p0 := Sensor waitClickButton.
			(Form dotOfSize: 8) displayAt: p0 ].
	warp := (self toForm: Display)
		cellSize: 1;
		sourceForm: Display;
		cellSize: 2;
		combinationRule: Form over.	"installs a colormap"
	[ Sensor anyButtonPressed ] whileFalse: 
		[ p := Sensor cursorPoint.
		pts := { 
			(r1 topLeft).
			(r1 bottomLeft).
			(r1 bottomRight).
			(r1 topRight)
		 } collect: 
			[ :pt | 
			pt 
				rotateBy: (p - p0) theta
				about: r1 center ].
		warp 
			copyQuad: pts
			toRect: (r1 translateBy: r1 width @ 0) ]