coloredRectangles
	"X11Display coloredRectangles"
	| display window gc colors rnd w h pt1 pt2 r nPixels time n |
	display := X11Display XOpenDisplay: nil.
	window := display ourWindow.
	gc := X11GC on: window.
	colors := Color colorNames collect:[:cn| (Color perform: cn) pixelWordForDepth: 32].
	rnd := Random new.
	w := Display width.
	h := Display height.
	n := 0.
	nPixels := 0.
	time := Time millisecondClockValue.
	[Sensor anyButtonPressed] whileFalse:[
		pt1 := (rnd next * w) asInteger @ (rnd next * h) asInteger.
		pt2 := (rnd next * w) asInteger @ (rnd next * h) asInteger.
		r := Rectangle encompassing: (Array with: pt1 with: pt2).
		gc foreground: colors atRandom.
		gc fillRectangle: r.
		gc foreground: 0.
		gc drawRectangle: r.
		display sync.
		n := n + 1.
		nPixels := nPixels + ((r right - r left) * (r bottom - r top)).
		(n \\ 100) = 0 ifTrue:[
			'Pixel fillRate: ', (nPixels * 1000 // (Time millisecondClockValue - time))
				asStringWithCommas displayAt: 0@0].
	].
	gc free.
	display closeDisplay.
	Display forceToScreen.