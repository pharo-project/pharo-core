cellColumn: column row: rowIndex
	| item cell |
	item := self elementAt: rowIndex.
	cell := FTCellMorph new.
	item depth timesRepeat: [ cell addMorphBack: self class emptyMorph ].
	cell
		addMorphBack:
			((item children isNotEmpty and: [ self canDisplayChildrenOf: item ])
				ifTrue: [ item generateButton ]
				ifFalse: [ self class emptyMorph ]).
	cell addMorphBack: item data asMorph.
	^ cell