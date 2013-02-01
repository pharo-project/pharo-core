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
		addMorph: self srcMorph fullFrame:  ((0@0 corner: 0.5@1) asLayoutFrame bottomRightOffset:  self joinMorph width negated@opts height negated);
		addMorph: self joinMorph fullFrame: ((0.5@0 corner: 0.5@1) asLayoutFrame leftOffset: self joinMorph width negated; bottomOffset: opts height negated);
		addMorph: self dstMorph fullFrame:  ((0.5@0 corner: 1@1) asLayoutFrame rightOffset: self scrollbarMorph width negated - self mapMorph width; bottomOffset: opts height negated);
		addMorph: self scrollbarMorph fullFrame: ( (1@0 corner: 1@1) asLayoutFrame leftOffset: self scrollbarMorph width negated - self mapMorph width;  bottomRightOffset: self mapMorph width negated@opts height negated);
		addMorph: self mapMorph fullFrame: ((1@0 corner: 1@1) asLayoutFrame leftOffset: self mapMorph width negated; bottomOffset: opts height negated);
		addMorph: opts fullFrame: ( (0@1 corner: 1@1)  asLayoutFrame topOffset: opts height).
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