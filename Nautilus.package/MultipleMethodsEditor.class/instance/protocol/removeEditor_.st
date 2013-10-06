removeEditor: anEditor

	editors remove: anEditor.
	current = anEditor
		ifTrue: [ current := editors at: 1 ifAbsent:[ nil ]].

	self updateScroller