addMiscExtrasTo: aMenu
	"Add a submenu of miscellaneous extra items to the menu."

	| subMenu |
	subMenu := UIManager default newMenuIn: self for: self.
	(self isWorldMorph not and: [(self renderedMorph isSystemWindow) not])
		ifTrue: [subMenu add: 'put in a window' translated action: #embedInWindow].

	self isWorldMorph ifFalse:
		[subMenu add: 'adhere to edge...' translated action: #adhereToEdge.
		subMenu addLine].

	subMenu
		add: 'add mouse up action' translated action: #addMouseUpAction;
		add: 'remove mouse up action' translated action: #removeMouseUpAction.
	subMenu addLine.
	aMenu add: 'extras...' translated subMenu: subMenu