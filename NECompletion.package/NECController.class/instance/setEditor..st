private
setEditor: anObject
	editor := anObject.
	editor morph onAnnouncement: MorphLostFocus do:  [self closeMenu ].