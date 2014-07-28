packageListItemIcon: anItem
	" I return the icon corresponding to anItem in the leftmost list "
	^ self model showGroups
		ifTrue: [ self model groupIconFor: anItem ]
		ifFalse: [
			" if I do not show groups, I have to know if I show packages or classes "
			self model packageIconFor: anItem]