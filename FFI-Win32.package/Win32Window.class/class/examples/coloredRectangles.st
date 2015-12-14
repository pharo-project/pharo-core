coloredRectangles "Win32Window coloredRectangles"
	"Draw a bunch of ellipses"
	| rnd pt1 pt2 w h colors newBrush oldBrush n nPixels time r |
	colors := Color colorNames collect:[:cName| (Color perform: cName)].
	"convert to COLORREF"
	colors := colors collect:[:c| 
		(c red * 255) asInteger + 
			((c green * 255) asInteger << 8) + 
				((c blue * 255) asInteger << 16)].
	rnd := Random new.
	w := Display width.
	h := Display height.
	self getFocus getHDCDuring:[:hDC|
		n := 0.
		nPixels := 0.
		time := Time millisecondClockValue.
		[Sensor anyButtonPressed] whileFalse:[
			newBrush := Win32HBrush createSolidBrush: colors atRandom.
			oldBrush := hDC selectObject: newBrush.
			pt1 := (rnd next * w) asInteger @ (rnd next * h) asInteger.
			pt2 := (rnd next * w) asInteger @ (rnd next * h) asInteger.
			hDC rectangle: (r := Rectangle encompassing: (Array with: pt1 with: pt2)).
			hDC selectObject: oldBrush.
			newBrush delete.
			n := n + 1.
			nPixels := nPixels + ((r right - r left) * (r bottom - r top)).
			(n \\ 100) = 0 ifTrue:[
				'Pixel fillRate: ', (nPixels * 1000 // (Time millisecondClockValue - time))
					asStringWithCommas displayAt: 0@0].
		].
	].
	Display forceToScreen.