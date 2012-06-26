displaying
addAll: aWindow
			
	| column navigationRow topHeight middleHeight bottomMorph bottomHeight delta |
	delta := 0.
	bottomHeight := 0.
	middleHeight := 0.
	topHeight := 0.

	" reverse order in column ..."
	"column vResizing: #rigid."
	self buildTopPlugins ifNotNil: [:top |
		topHeight := top height.
		aWindow 
			addMorph: top
			fullFrame: (LayoutFrame 
							fractions: (0 @ 0 corner: 1 @ 0)
							offsets: (0 @ 0 corner: 0 @ topHeight)).
		delta := 4.
		topHeight := topHeight + delta.
		top color: Color transparent].
	
	"navigationRow := self buildNavigationRow: aWindow height: topHeight."

	self buildColumns: aWindow height: topHeight"+navigationRow".
	
	
	self buildMiddlePlugins ifNotNil: [:middle |
		middleHeight := middle height+4.
		aWindow 
			addMorph: middle
			fullFrame: (LayoutFrame 
							fractions: (0 @ 0.5 corner: 1 @ 0.5)
							offsets: (0 @ 0 corner: 0 @ middleHeight)).
		middle color: Color transparent].
	
	sourceCodePanel := PanelMorph new.
	sourceCodePanel changeProportionalLayout.
		
	sourceCodePanel 
		addMorph: self buildCodePane
		fullFrame: (LayoutFrame 
						fractions: (0@0 corner: 1@1) 
						offsets: (0@0 corner: 0@0)).
	"self buildCommentPane."
	sourceCodePanel 
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	sourceCodeContainer := PanelMorph new.
	sourceCodeContainer 
		changeTableLayout;
		listDirection: #leftToRight.

	{	sourceCodePanel.
		self buildTextAreaButtonsColumn: aWindow} reverse do: [:each | sourceCodeContainer addMorph: each].
	
	bottomMorph := self buildBottomPlugins.
	bottomMorph ifNotNil: [:bottom | bottomHeight := bottom height + 8].
	aWindow
		addMorph: sourceCodeContainer
		fullFrame: (LayoutFrame 
						fractions: (0 @ 0.5 corner: 1 @ 1)
						offsets: (0 @ middleHeight corner: 0 @ bottomHeight negated)).
						
	bottomMorph ifNotNil: [:bottom |					
		aWindow				
			addMorph: bottom
			fullFrame: (LayoutFrame 
							fractions: (0 @ 1 corner: 1 @ 1)
							offsets: (0 @ bottomHeight negated corner: 0 @ 0)).
		bottom color: Color transparent]