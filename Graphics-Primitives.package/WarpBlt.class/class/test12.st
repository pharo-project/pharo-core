examples
test12
	"Display restoreAfter: [WarpBlt test12]"
	"Just like test1, but comparing smooth to non-smooth warps"
	| warp pts r1 p0 p ext warp2 |
	UIManager default 
		informUser: 'Choose a rectangle with interesting stuff' translated
		during: 
			[ r1 := Rectangle originFromUser: 50 @ 50.
			Sensor waitNoButton ].
	UIManager default 
		informUser: 'Now click down and up
and move the mouse around the dot' translated
		during: 
			[ p0 := Sensor waitClickButton.
			(Form dotOfSize: 8) displayAt: p0 ].
	warp := (self toForm: Display)
		cellSize: 2;
		clipRect: (0 @ 0 extent: r1 extent * 5);
		sourceForm: Display;
		combinationRule: Form over.	"installs a colormap"
	warp2 := (self toForm: Display)
		clipRect: ((0 @ 0 extent: r1 extent * 5) translateBy: 250 @ 0);
		sourceForm: Display;
		combinationRule: Form over.
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
		ext := (r1 extent * ((p - p0) r / 20.0 max: 0.1)) asIntegerPoint.
		warp 
			copyQuad: pts
			toRect: ((r1 extent * 5 - ext) // 2 extent: ext).
		warp2 
			copyQuad: pts
			toRect: (((r1 extent * 5 - ext) // 2 extent: ext) translateBy: 250 @ 0) ]