initializeTable: tableMorph row: rowMorph primary: aBoolean
	self initialize.
	self color: (aBoolean 
		ifTrue: [ tableMorph selectionColor ]
		ifFalse: [ tableMorph secondarySelectionColor ]).
	self bounds: rowMorph bounds.
	self addMorph: rowMorph.
	"Forcing color of rowMorph as transparent because it might be setted with some other 
	 color in definition"
	rowMorph color isTransparent ifTrue: [ ^self ].
	rowMorph color: (rowMorph color mixed: 0.4 with: self color).