gtSeverity
	self severity = #error ifTrue: [ ^ 1 ].
	self severity = #warning ifTrue: [ ^ 2 ].
	^ 3