examples
wheel: thisMany saturation: s brightness: v
	"Return a collection of thisMany colors evenly spaced around the color wheel, all of the given saturation and brightness."
	"Color showColors: (Color wheel: 12 saturation: 0.4 brightness: 1.0)"
	"Color showColors: (Color wheel: 12 saturation: 0.8 brightness: 0.5)"

	^ (Color h: 0.0 s: s v: v) wheel: thisMany
