initialize-release
initialize
	"Initialize the receiver."

	|descriptionHeight|
	super initialize.
	self
		diffMorph: self newDiffMorph;
		changeTree: self newChangeTreeMorph;
		descriptionMorph: self newDescriptionMorph.
	descriptionHeight := self descriptionMorph minExtent y.
	self
		changeProportionalLayout;
		addMorph: self descriptionMorph
		fullFrame: (LayoutFrame fractions: (0.3@0 corner: 1@0) offsets: (ProportionalSplitterMorph splitterWidth @ 0 corner: 0@descriptionHeight));
		addMorph: self changeTree
		fullFrame: (LayoutFrame fractions: (0@0 corner: 0.3@1) offsets: (0@0 corner: 0@0));
		addMorph: self diffMorph
		fullFrame: (LayoutFrame fractions: (0.3@0 corner: 1@1)
					offsets: (ProportionalSplitterMorph splitterWidth @ descriptionHeight corner: 0@0));
		addPaneSplitters.
	self updateDescriptionFillStyle: self paneColor.
	self splitters first delete.
	self onAnnouncement: MorphOpened do: [self changeTree expandAll]
