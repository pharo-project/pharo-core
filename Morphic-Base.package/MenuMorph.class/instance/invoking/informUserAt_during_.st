informUserAt: aPoint during: aBlock 
	"Add this menu to the Morphic world during the execution of the given
	block. "
	| title w |
	title := self allMorphs
				detect: [:ea | ea hasProperty: #titleString]. self flag: 'fixMe'.
	title := title submorphs first.
	self visible: false.
	w := ActiveWorld.
	aBlock
		value: [:string | 
			self visible
				ifFalse: [w addMorph: self centeredNear: aPoint.
					self visible: true].
			title contents: string.
			self setConstrainedPosition: self activeHand cursorPoint hangOut: false.
			self changed.
			w displayWorld
			"show myself"].
	self delete.
	w displayWorld