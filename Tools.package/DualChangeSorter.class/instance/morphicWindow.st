initialization
morphicWindow
	
	| window |
	self setDefaultChangeSorters.

	window := (SystemWindow labelled: leftCngSorter label) model: self.
	"topView minimumSize: 300 @ 200."
	leftCngSorter openIn: window rect: (0@0 extent: 0.5@1).
	rightCngSorter openIn: window rect: (0.5@0 extent: 0.5@1).
	^ window
