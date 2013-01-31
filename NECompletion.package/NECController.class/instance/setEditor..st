private
setEditor: anObject
	editor := anObject.
	editor morph on: MorphLostFocus send: #closeMenu to: self.