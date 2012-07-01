initialization
initialize
	"Initialize the receiver."

	|buttons buttonsHeight|
	super initialize.
	buttons := self newButtonsMorph.
	buttonsHeight := buttons minExtent y.
	self
		merged: false;
		patchMorph: self newPatchMorph;
		codeMorph: self newCodeMorph;
		changeProportionalLayout;
		addMorph: self patchMorph
		fullFrame: (LayoutFrame fractions: (0@0 corner: 1@0.6));
		addMorph: self codeMorph
		fullFrame: (LayoutFrame fractions: (0@0.6 corner: 1@1) offsets: (0@0 corner: 0@buttonsHeight negated));
		addMorph: self newButtonsMorph
		fullFrame: (LayoutFrame fractions: (0@1 corner: 1@1) offsets: (0@buttonsHeight negated corner: 0@0));
		addPaneSplitters