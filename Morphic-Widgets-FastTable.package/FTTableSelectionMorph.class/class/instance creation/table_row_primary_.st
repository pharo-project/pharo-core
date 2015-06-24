table: tableMorph row: rowMorph primary: aBoolean
	^ self basicNew 
		initializeTable: tableMorph 
			row: rowMorph 
			primary: aBoolean;
		yourself