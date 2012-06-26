initialization
initialize
	"Initialize the receiver."

	|exv exh opts ppCheckbox|
	super initialize.
	self prettyPrint: CodeHolder diffsWithPrettyPrint.
	ppCheckbox := self newPrettyPrintCheckboxMorph.
	opts := self newPanel
		addMorph: ((self newRow: {ppCheckbox}) 
						listCentering: #bottomRight).
	opts vResizing: #shrinkWrap.
	opts extent: opts minExtent.
	self
		srcMorph: self newSrcMorph;
		joinMorph: self newJoinMorph;
		dstMorph: self newDstMorph;
		scrollbarMorph: self newScrollbarMorph;
		mapMorph: self newMapMorph;
		changeProportionalLayout;
		addMorph: self srcMorph fullFrame: (LayoutFrame
			fractions: (0@0 corner: 0.5@1) offsets: (0@0 corner: self joinMorph width negated@opts height negated));
		addMorph: self joinMorph fullFrame: (LayoutFrame
			fractions: (0.5@0 corner: 0.5@1) offsets: (self joinMorph width negated@0 corner: 0@opts height negated));
		addMorph: self dstMorph fullFrame: (LayoutFrame
			fractions: (0.5@0 corner: 1@1) offsets: (0@0 corner: self scrollbarMorph width negated - self mapMorph width@opts height negated));
		addMorph: self scrollbarMorph fullFrame: (LayoutFrame
			fractions: (1@0 corner: 1@1) offsets: (self scrollbarMorph width negated - self mapMorph width@0 corner: self mapMorph width negated@opts height negated));
		addMorph: self mapMorph fullFrame: (LayoutFrame
			fractions: (1@0 corner: 1@1) offsets: (self mapMorph width negated@0 corner: 0@opts height negated));
		addMorph: opts fullFrame: (LayoutFrame
			fractions: (0@1 corner: 1@1) offsets: (0@opts height negated corner: 0@0)).
	exv := ExclusiveWeakMessageSend newSharedState.
	exh := ExclusiveWeakMessageSend newSharedState.
	self srcMorph
		when: #vScroll send: #srcScroll: to: self exclusive: exv;
		when: #hScroll send: #hScrollValue: to: self dstMorph exclusive: exh.
	self dstMorph
		when: #vScroll send: #dstScroll: to: self exclusive: exv;
		when: #hScroll send: #hScrollValue: to: self srcMorph  exclusive: exh.
	self
		linkSubmorphsToSplitters;
		extent: self initialExtent