morphic
setIndex: anIndex
	| item |
	
	selectionHolder index contents: anIndex.
	item := (listHolder contents at: anIndex ifAbsent: [ nil ]).
	item value.
	selectionHolder selection contents: item.
	self changed: #getIndex