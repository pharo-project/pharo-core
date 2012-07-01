icon
listIcon: anItem
	" I return the icon corresponding to anItem in the leftmost list "


	^ self showGroups
		ifTrue: [ self groupIconFor: anItem ]
		ifFalse: [
			" if I do not show groups, I have to know if I show packages or classes "
			self packageIconFor: anItem"
			self 
				ifPackages: [ self packageIconFor: anItem ]
				ifClasses: [ self classIconFor: anItem ]"]