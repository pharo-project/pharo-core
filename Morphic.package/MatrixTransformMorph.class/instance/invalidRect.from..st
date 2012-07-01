change reporting
invalidRect: rect from: aMorph
	aMorph == self
		ifTrue:[super invalidRect: rect from: self]
		ifFalse:[super invalidRect: (self transform localBoundsToGlobal: rect) from: aMorph].