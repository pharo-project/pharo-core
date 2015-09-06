addMorphBack: aMorph

	super addMorphBack: aMorph.
	aMorph isMenuItemMorph ifTrue: [ menuItems add: aMorph ].
	^aMorph 