toSelectionRow: rowMorph primary: aBoolean
	^ (FTTableSelectionMorph 
		table: self owner
			row: rowMorph 
			primary: aBoolean)
		privateOwner: self;
		yourself