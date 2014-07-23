addMiscExtrasTo: aMenu
	"Add a submenu of miscellaneous extra items to the menu."

	self isWorldMorph
		ifFalse: [ 
			| subMenu |
			subMenu := UIManager default newMenuIn: self for: self.
			(self renderedMorph isSystemWindow not)
				ifTrue: [ subMenu add: 'put in a window' translated action: #embedInWindow ].
			subMenu add: 'adhere to edge...' translated action: #adhereToEdge.
			aMenu add: 'extras...' translated subMenu: subMenu ]