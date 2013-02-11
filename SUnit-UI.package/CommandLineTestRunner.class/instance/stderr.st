accessing
stderr
	^ (stderr isNil or: [ stderr closed ]) 
		ifTrue: [ stderr := VTermOutputDriver stderr ].