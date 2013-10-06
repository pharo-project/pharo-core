initialize
	"Initialize the receiver."

	| exv exh ppCheckbox |
	super initialize.
	self prettyPrint: CodeHolder diffsWithPrettyPrint.
	ppCheckbox := self newPrettyPrintCheckboxMorph.
	optionsPanel := self newPanel 
		addMorph: ((self newRow: {ppCheckbox}) 
		listCentering: #bottomRight);
		color: self defaultColor.
	optionsPanel vResizing: #shrinkWrap.
	optionsPanel extent: optionsPanel minExtent.
	self
		srcMorph: self newSrcMorph;
		joinMorph: self newJoinMorph;
		dstMorph: self newDstMorph;
		scrollbarMorph: self newScrollbarMorph;
		mapMorph: self newMapMorph;
		changeProportionalLayout.
	self addMorphsWithOptions.
	exv := ExclusiveWeakMessageSend newSharedState.
	exh := ExclusiveWeakMessageSend newSharedState.
	self srcMorph
		when: #vScroll
			send: #srcScroll:
			to: self
			exclusive: exv;
		when: #hScroll
			send: #hScrollValue:
			to: self dstMorph
			exclusive: exh.
	self dstMorph
		when: #vScroll
			send: #dstScroll:
			to: self
			exclusive: exv;
		when: #hScroll
			send: #hScrollValue:
			to: self srcMorph
			exclusive: exh.
	self
		linkSubmorphsToSplitters;
		extent: self initialExtent