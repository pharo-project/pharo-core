cellColumn: column row: rowIndex 
	| object icon text cell |

	object := self elementAt: rowIndex.
	icon := self getIconSelector 
		ifNotNil: [ :selector | self model perform: selector with: object ].
	text := self elementWrapped: object.
	
	cell := FTCellMorph new
		cellInset: 5;
		yourself.
	icon ifNotNil: [ cell addMorphBack: icon asMorph ].
	cell addMorphBack: text asMorph.
	
	^ cell