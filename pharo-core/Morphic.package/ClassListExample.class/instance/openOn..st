as yet unclassified
openOn: aClass
	| window |
	self rootClass: aClass.
	window := StandardWindow new model: self.
	window title: aClass name, ' hierarchy'.
	window 
		addMorph: self treeMorph
		fullFrame: (LayoutFrame 
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (0 @ 0 corner: 0 @ 0)).						
	window themeChanged.
	window openInWorld.
	^ window