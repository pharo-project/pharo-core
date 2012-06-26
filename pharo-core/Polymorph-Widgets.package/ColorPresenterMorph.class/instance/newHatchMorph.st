as yet unclassified
newHatchMorph
	"Answer a new morph showing a grid hatch pattern."

	^Morph new
		color: Color transparent;
		changeProportionalLayout;
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		minWidth: 48;
		minHeight: 12;
		addMorph: (Morph new color: Color white)
		fullFrame: (LayoutFrame fractions: (0@0 corner: 0.3@1));
		addMorph: (Morph new fillStyle: (InfiniteForm with: self hatchForm))
		fullFrame: (LayoutFrame fractions: (0.3@0 corner: 0.7@1));
		addMorph: self solidLabelMorph
		fullFrame: (LayoutFrame fractions: (0.7@0 corner: 1@1));
		addMorph: self labelMorph
		fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1))