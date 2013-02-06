context stack menu
contextStackMenu: aMenu
	self selectedContext selector = #doesNotUnderstand:
		ifTrue: [ self implementStackMenu: aMenu ].
		
	self isPostMortem 
		ifTrue: [ self postMortemStackActionMenu: aMenu]
		ifFalse: [ self stackActionMenu: aMenu ].
										
	^aMenu addAllFromPragma: 'debuggerStackMenu' target: self.