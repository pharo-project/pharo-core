utility
addFullPanesTo: window from: aCollection

	aCollection do: [ :each | | frame |
		frame := LayoutFrame 
			fractions: each second 
			offsets: each third.
		window addMorph: each first fullFrame: frame.
	]