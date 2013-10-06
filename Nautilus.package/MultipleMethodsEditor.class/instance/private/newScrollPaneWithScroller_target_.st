newScrollPaneWithScroller: scroller target: target
	| pane |
	
	pane := GeneralScrollPane new
						removeAllMorphs;
						scroller: scroller;
						yourself.

	pane
		scrollTarget: target;
		addMorph: scroller;
		resizeScroller;
		hScrollbarShowNever.
		
	^ pane