cellColumn: column row: rowIndex
	| item cell |
	item := self elementAt: rowIndex.
	cell := FTCellMorph new.
	item depth timesRepeat: [ cell addMorphBack: self class emptyMorph ].
	cell addMorphBack: (self buttonFor: item).
	cell addMorphBack: item data asMorph.
	^ cell