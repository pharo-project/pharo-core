examples
wheel: thisMany
	"Return a collection of thisMany colors evenly spaced around the color wheel."
	"Color showColors: (Color wheel: 12)"

	^ Color wheel: thisMany saturation: 0.9 brightness: 0.7
