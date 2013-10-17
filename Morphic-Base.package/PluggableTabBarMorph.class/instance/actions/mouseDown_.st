mouseDown: anEvent
	| xPosition newTab |
	xPosition := anEvent cursorPoint x.
	newTab :=
		((self tabs detect: [ :anAssociation | | tabBounds |
				tabBounds := anAssociation key bounds.
				(tabBounds left <= xPosition) and: [ tabBounds right >= xPosition]]
			ifNone: [nil])
		key).
	newTab ifNil: [^ self].
	newTab = activeTab ifFalse: [ self activeTab: newTab ]
