coloredEllipses "Win32Window coloredEllipses"
	"Draw a bunch of ellipses"
	| rnd pt1 pt2 w h colors newBrush oldBrush |
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
		[Sensor anyButtonPressed] whileFalse:[
			newBrush := Win32HBrush createSolidBrush: colors atRandom.
			oldBrush := hDC selectObject: newBrush.
			pt1 := (rnd next * w) asInteger @ (rnd next * h) asInteger.
			pt2 := (rnd next * w) asInteger @ (rnd next * h) asInteger.
			hDC ellipse: (Rectangle encompassing: (Array with: pt1 with: pt2)).
			hDC selectObject: oldBrush.
			newBrush delete.
		].
	].
	Display forceToScreen.