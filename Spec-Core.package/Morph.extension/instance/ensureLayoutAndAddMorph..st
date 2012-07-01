*Spec-Core
ensureLayoutAndAddMorph: aMorph

	aMorph layoutFrame
		ifNil: [ aMorph layoutFrame: (LayoutFrame fractions: (0@0 corner: 1@1) offsets: nil ) ].
		
	self addMorph: aMorph 