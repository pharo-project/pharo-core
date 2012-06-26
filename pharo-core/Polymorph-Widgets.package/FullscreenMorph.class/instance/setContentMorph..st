as yet unclassified
setContentMorph: aMorph
	"Replace the submorphs with aMorph."
	
	self removeAllMorphs.
	self
		addMorph: aMorph
		fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1))