*Spec-Layout
newVSplitterAt: anIndex
	| left frame splitter index size |

	size := submorphs size.
	index := size - anIndex + 2.
	left := self submorphs at: index.
	frame := left layoutFrame.
	
	splitter := self newVSplitter.
	splitter 
		layoutFrame: (LayoutFrame
							fractions: ((frame rightFraction @ frame topFraction) corner: (frame rightFraction @ frame bottomFraction))
							offsets: (0@0 corner: 4@0)).

	self privateAddMorph: splitter atIndex: (size - anIndex + 2)