*Spec-Layout
newHSplitterAt: anIndex
	| above frame splitter index size |

	size := submorphs size.
	index := size - anIndex + 2.
	above := self submorphs at: index.
	frame := above layoutFrame.
	
	splitter := self newHSplitter.
	splitter 
		layoutFrame: (LayoutFrame
							fractions: ((frame leftFraction @ frame bottomFraction) corner: (frame rightFraction @ frame bottomFraction))
							offsets: (0@0 corner: 0@4)).
								
	self privateAddMorph: splitter atIndex: (size - anIndex + 2)