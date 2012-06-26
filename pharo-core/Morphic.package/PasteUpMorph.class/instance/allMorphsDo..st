submorphs-accessing
allMorphsDo: aBlock
	"Enumerate all morphs in the world, including those held in hands."

	super allMorphsDo: aBlock.
	self isWorldMorph
		ifTrue: [worldState handsReverseDo: [:h | h allMorphsDo: aBlock]].
