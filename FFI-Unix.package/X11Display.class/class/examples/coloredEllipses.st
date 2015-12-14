coloredEllipses
	"X11Display coloredEllipses"
	| display window gc colors rnd w h pt1 pt2 r |
	display := X11Display XOpenDisplay: nil.
	window := display ourWindow.
	gc := X11GC on: window.
	colors := Color colorNames collect:[:n| (Color perform: n) pixelWordForDepth: 32].
	rnd := Random new.
	w := Display width.
	h := Display height.
	[Sensor anyButtonPressed] whileFalse:[
		pt1 := (rnd next * w) asInteger @ (rnd next * h) asInteger.
		pt2 := (rnd next * w) asInteger @ (rnd next * h) asInteger.
		r := Rectangle encompassing: (Array with: pt1 with: pt2).
		gc foreground: colors atRandom.
		gc fillOval: r.
		gc foreground: 0.
		gc drawOval: r.
		display sync.
	].
	gc free.
	display closeDisplay.
	Display forceToScreen.