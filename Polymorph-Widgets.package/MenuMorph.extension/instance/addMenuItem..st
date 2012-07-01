*Polymorph-Widgets
addMenuItem: anItem
	self addMorphBack: anItem.
	^ self menuItems add: anItem.
