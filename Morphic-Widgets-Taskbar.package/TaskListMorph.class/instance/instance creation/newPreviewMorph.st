newPreviewMorph
	"Answer a new preview holder."
	self halt.
	^ Morph new
		color: Color transparent;
		extent: self defaultPreviewExtent;
		yourself.