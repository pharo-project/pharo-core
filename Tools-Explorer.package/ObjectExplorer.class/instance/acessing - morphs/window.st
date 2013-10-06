window
	| window listMorph |
	window := (SystemWindow labelled: self label) model: self.
	listMorph := self treeListMorph.
	window 
		addMorph: listMorph 
		frame: (0 @ 0 corner: 1 @ 0.8).
	window
		addMorph: self textMorph
		frame: (0 @ 0.8 corner: 1 @ 1).
	listMorph autoDeselect: false.
	^ window