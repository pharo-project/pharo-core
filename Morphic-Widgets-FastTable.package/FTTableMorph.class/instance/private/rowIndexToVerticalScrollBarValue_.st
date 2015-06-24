rowIndexToVerticalScrollBarValue: aNumber
	| numberOfRows |
	
	numberOfRows := self dataSource numberOfRows.
	numberOfRows = 0 ifTrue: [ ^ 0.0 ].
	^ ((aNumber / numberOfRows) asFloat 
		max: 0.0)
		min: 1.0