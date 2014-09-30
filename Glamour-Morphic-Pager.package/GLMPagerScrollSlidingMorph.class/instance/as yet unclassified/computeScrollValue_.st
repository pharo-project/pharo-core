computeScrollValue: aNumber
	|newValue minLeft maxLeft value interval|
	
	newValue := aNumber.
	minLeft := owner bounds left.
	maxLeft := owner bounds right - self width.
	
	newValue < minLeft ifTrue: [ newValue := minLeft ].
	newValue > maxLeft ifTrue: [ newValue := maxLeft ].
	
	interval := owner width.
		
	value := (interval = self width)
		ifTrue: [ 0.0 ]
		ifFalse: [ (newValue - minLeft) / (interval - self width) ].
	
	^ value.