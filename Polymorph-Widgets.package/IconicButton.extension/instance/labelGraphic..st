*Polymorph-Widgets-override
labelGraphic: aForm
	"Changed to look for any image morph rather than just a sketch."
	
	| oldLabel |
	graphicalMorph ifNotNil: [graphicalMorph delete].
	graphicalMorph := ImageMorph new image: aForm.
	self extent: graphicalMorph extent + (self borderWidth + self extraBorder).
	graphicalMorph position: self center - (graphicalMorph extent // 2).
	self addMorph: graphicalMorph.
	graphicalMorph lock