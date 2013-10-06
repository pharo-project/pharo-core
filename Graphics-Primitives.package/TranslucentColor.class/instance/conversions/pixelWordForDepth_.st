pixelWordForDepth: depth 
	"Return the pixel value for this color at the given depth. Translucency only works in RGB; this color will appear either opaque or transparent at all other depths."
	| basicPixelWord |
	alpha = 0 ifTrue: [ ^ 0 ].
	basicPixelWord := super pixelWordForDepth: depth.
	depth < 32 
		ifTrue: [ ^ basicPixelWord ]
		ifFalse: [ ^ (basicPixelWord bitAnd: 16777215) bitOr: (alpha bitShift: 24) ]