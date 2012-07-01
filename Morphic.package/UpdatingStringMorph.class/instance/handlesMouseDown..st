event handling
handlesMouseDown: evt
	(owner wantsKeyboardFocusFor: self)
		ifTrue:[^true].
	^ super handlesMouseDown: evt