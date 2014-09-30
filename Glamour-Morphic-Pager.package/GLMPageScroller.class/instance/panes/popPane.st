popPane
	transform removeMorph: transform lastSubmorph. "one for the separator"
	transform submorphs isEmpty
		ifFalse: [ transform removeMorph: transform lastSubmorph ].
	"remove from collection"
	panes removeLast.
	paneCount := paneCount - 1.
	self updatePanes.