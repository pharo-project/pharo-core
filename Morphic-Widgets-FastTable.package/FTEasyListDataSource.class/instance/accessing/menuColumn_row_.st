menuColumn: column row: rowIndex
	menuBlock ifNil: [ ^ nil ].
	^ menuBlock value: (self elementAt: rowIndex)