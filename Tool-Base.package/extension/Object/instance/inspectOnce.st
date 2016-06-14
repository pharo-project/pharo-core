inspectOnce
	"Inspect unless we have already done it once."
	
	| node |
	node := thisContext sender sourceNodeExecuted.
	(node hasProperty: #inspectOnce) ifTrue: [^self]. 
	node propertyAt: #inspectOnce put: true.
	^self inspect