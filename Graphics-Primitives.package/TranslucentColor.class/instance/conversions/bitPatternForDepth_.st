bitPatternForDepth: depth
	"Return an appropriate bit pattern or stipple.  This will almost never be meaningful for tranlucentColors, except for the degenerate case of tranparency."

	alpha = 0 ifTrue: [^ Bitmap with: 0].
	^ super bitPatternForDepth: depth