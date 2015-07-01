addAll: aWindow
	| topHeight middleHeight bottomMorph bottomHeight delta |
	
	delta := 0.
	bottomHeight := 0.
	middleHeight := 0.
	topHeight := 0.
	sourceTextWidget := self buildCodePane.
	sourceTextWidget announcer subscribe: RubTextAccepted send: #whenTextAcceptedInView: to: self.
	" reverse order in column ..."
	"column vResizing: #rigid."
	self buildTopPlugins ifNotNil: [:top |
		topHeight := top height.
		aWindow 
			addMorph: top
			fullFrame: ((0 @ 0 corner: 1 @ 0) asLayoutFrame bottomOffset: topHeight).
		delta := 4.
		topHeight := topHeight + delta.
		top color: Color transparent].
	
	"navigationRow := self buildNavigationRow: aWindow height: topHeight."

	self buildColumns: aWindow height: topHeight"+navigationRow".
	self setShortcuts: #NautilusSourceCodeShortcuts to: aWindow.
	
	self buildMiddlePlugins ifNotNil: [:middle |
		middleHeight := middle height+4.
		aWindow 
			addMorph: middle
			fullFrame: ((0 @ 0.5 corner: 1 @ 0.5) asLayoutFrame bottomOffset: middleHeight).
		middle color: Color transparent].
	
	sourceCodePanel := PanelMorph new.
	self setShortcuts: #NautilusSourceCodeShortcuts to: sourceCodePanel.
	sourceCodePanel changeProportionalLayout.
		
	sourceCodePanel 
		addMorph: sourceTextWidget 
		fullFrame: LayoutFrame identity.
		
	"self buildCommentPane."
	sourceCodePanel 
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	sourceCodeContainer := PanelMorph new.
	self setShortcuts: #NautilusSourceCodeShortcuts to: sourceCodeContainer.
	sourceCodeContainer 
		changeTableLayout;
		listDirection: #leftToRight.

	sourceCodeContainer addMorph: sourceCodePanel.
	
	bottomMorph := self buildBottomPlugins.
	
	bottomMorph ifNotNil: [:bottom | bottomHeight := bottom height + 8].
	aWindow
		addMorph: sourceCodeContainer
		fullFrame: ( (0@0.5 corner: 1 @ 1) asLayoutFrame 
						topOffset: middleHeight;  bottomOffset: bottomHeight negated).
						
	bottomMorph ifNotNil: [:bottom |					
		aWindow				
			addMorph: bottom
			fullFrame: ((0 @ 1 corner: 1 @ 1) asLayoutFrame topOffset:  bottomHeight negated).
		bottom color: Color transparent]