cellColumn: column row: rowIndex
	| cell |
	cell := FTCellMorph new.
	cell addMorphBack: (self elementAt: rowIndex) asMorph.
	(self needSeparatorBefore: rowIndex)
		ifTrue: [ cell withTopSeparator ].
	^ cell