coloredEllipses "MacRect coloredEllipses"
	| rnd w h colors n r pat v0 v1 |
	colors := Color colorNames collect:[:cName| (Color perform: cName)].
	"convert to PixPats"
	colors := colors collect:[:c| MacPixPatPtr newPixPat makeRGBPattern: c].
	rnd := Random new.
	w := Display width.
	h := Display height.
	n := 0.
	r := MacRect new.
	[Sensor anyButtonPressed] whileFalse:[
		pat := colors atRandom.
		v0 := (rnd next * w) asInteger.
		v1 := (rnd next * w) asInteger.
		v0 < v1 ifTrue:[r left: v0; right: v1] ifFalse:[r left: v1; right: v0].
		v0 := (rnd next * h) asInteger.
		v1 := (rnd next * h) asInteger.
		v0 < v1 ifTrue:[r top: v0; bottom: v1] ifFalse:[r top: v1; bottom: v0].
		self apiFillCOval: r with: pat.
		self apiFrameOval: r.
		n := n + 1.
		(n \\ 10) = 0 ifTrue:[n printString displayAt: 0@0].
	].
	colors do:[:c| c dispose].
	Display forceToScreen.