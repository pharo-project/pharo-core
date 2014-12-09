addItem: anItem to: aTable
	| index |
	index := self computeIndexFromHash: anItem keyHash forTable: aTable.
	anItem next: (aTable at: index).
	aTable at: index put: anItem.