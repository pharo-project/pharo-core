colorForResult: aResult
	aResult hasErrors ifTrue: [ ^ Color red ].
	aResult hasFailures ifTrue: [ ^ Color yellow ].
	aResult hasPassed ifTrue: [ ^ Color green ].
	^ Color gray