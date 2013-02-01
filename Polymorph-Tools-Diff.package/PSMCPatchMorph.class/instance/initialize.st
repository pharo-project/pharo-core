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
		fullFrame: ((0.3@0 corner: 1@0) asLayoutFrame leftOffset: ProportionalSplitterMorph splitterWidth; bottomOffset: descriptionHeight);
		addMorph: self changeTree
		fullFrame: (0@0 corner: 0.3@1) asLayoutFrame;
		addMorph: self diffMorph
		fullFrame: ((0.3@0 corner: 1@1) asLayoutFrame topLeftOffset: ProportionalSplitterMorph splitterWidth @ descriptionHeight);
		addPaneSplitters.
	self updateDescriptionFillStyle: self paneColor.
	self splitters first delete.
	self onAnnouncement: MorphOpened do: [self changeTree expandAll]
