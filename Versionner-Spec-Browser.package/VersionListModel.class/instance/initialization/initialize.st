initialize
	super initialize.
	okToChange := true.
	selectionHolder 
		whenChangedDo: [ selectionVersionString := (self listElementAt: self selectedIndex)
															ifNil: [ nil ]
															ifNotNilDo: [ :item | item versionString] ]