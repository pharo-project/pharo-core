coloredRectangles "MacRect coloredRectangles"
	| rnd w h colors n r pat v0 v1 nPixels time |
	colors := Color colorNames collect:[:cName| (Color perform: cName)].
	"convert to PixPats"
	colors := colors collect:[:c| MacPixPatPtr newPixPat makeRGBPattern: c].
	rnd := Random new.
	w := Display width.
	h := Display height.
	n := 0.
	r := MacRect new.
	nPixels := 0.
	time := Time millisecondClockValue.
	[Sensor anyButtonPressed] whileFalse:[
		pat := colors atRandom.
		v0 := (rnd next * w) asInteger.
		v1 := (rnd next * w) asInteger.
		v0 < v1 ifTrue:[r left: v0; right: v1] ifFalse:[r left: v1; right: v0].
		v0 := (rnd next * h) asInteger.
		v1 := (rnd next * h) asInteger.
		v0 < v1 ifTrue:[r top: v0; bottom: v1] ifFalse:[r top: v1; bottom: v0].
		self apiFillCRect: r with: pat.
		self apiFrameRect: r.
		n := n + 1.
		nPixels := nPixels + ((r right - r left) * (r bottom - r top)).
		(n \\ 100) = 0 ifTrue:[
			'Pixel fillRate: ', (nPixels * 1000 // (Time millisecondClockValue - time))
				asStringWithCommas displayAt: 0@0].
	].
	colors do:[:c| c dispose].
	Display forceToScreen.