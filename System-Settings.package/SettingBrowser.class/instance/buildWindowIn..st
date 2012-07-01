user interface
buildWindowIn: aWindow 
	| statusView toolBar treeMorph toolBarY gap menuBar packageListView statusViewHeight |
	treeMorph := self treeMorphIn: aWindow.
	statusView := self statusViewIn: aWindow.
	statusViewHeight := 100.
	toolBar := self toolBarIn: aWindow.
	gap := 3.
	packageListView := self packageListViewIn: aWindow.
	toolBarY := toolBar minExtent y + gap.
	aWindow 
		addMorph: toolBar
		fullFrame: (LayoutFrame 
				fractions: (0 @ 0 corner: 1 @ 0)
				offsets: (0 @ (gap ) corner: 0 @ (toolBarY + gap))).
	aWindow 
		addMorph: treeMorph
		fullFrame: (LayoutFrame 
				fractions: (0 @ 0 corner: 1 @ 0.99)
				offsets: (0 @ (toolBarY + gap + gap) corner: 0 @ statusViewHeight negated)).
	aWindow 
		addMorph: statusView
		fullFrame: (LayoutFrame 
				fractions: (0 @ 0.99 corner: 0.75 @ 1)
				offsets: (0 @ statusViewHeight negated corner: 0 @ 0)).
	aWindow 
		addMorph: packageListView
		fullFrame: (LayoutFrame 
				fractions: (0.75 @ 0.99 corner: 1 @ 1)
				offsets: (0 @ statusViewHeight negated corner: 0 @ 0)).
	^ aWindow