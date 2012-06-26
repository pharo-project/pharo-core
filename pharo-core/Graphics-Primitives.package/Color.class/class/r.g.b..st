instance creation
r: r g: g b: b
	"Return a color with the given r, g, and b components in the range [0.0..1.0]."

	^ self basicNew setRed: r green: g blue: b
