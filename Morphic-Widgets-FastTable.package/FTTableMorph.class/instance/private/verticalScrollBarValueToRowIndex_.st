verticalScrollBarValueToRowIndex: aNumber
	| startingIndex |
	startingIndex := self dataSource numberOfRows - self container calculateMinVisibleRows.
	^ (startingIndex * aNumber) asInteger