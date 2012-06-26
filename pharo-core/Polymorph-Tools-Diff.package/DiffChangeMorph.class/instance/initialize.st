initialize-release
initialize
	"Initialize the receiver."

	|descriptionHeight|
	super initialize.
	self
		diffMorph: self newDiffMorph;
		descriptionMorph: self newDescriptionMorph.
	descriptionHeight := self descriptionMorph minExtent y.
	self
		changeProportionalLayout;
		addMorph: self descriptionMorph
		fullFrame: (LayoutFrame fractions: (0@0 corner: 1@0) offsets: (0@0 corner: 0@descriptionHeight));
		addMorph: self diffMorph
		fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1)
					offsets: (0 @ descriptionHeight corner: 0@0)).
	self
		extent: self initialExtent;
		updateDescriptionFillStyle: self paneColor