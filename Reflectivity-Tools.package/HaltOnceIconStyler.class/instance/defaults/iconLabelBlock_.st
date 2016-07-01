iconLabelBlock: aNode
	^ [(aNode hasProperty: #haltOnce) 
		ifTrue: ['inactive, click to turn on']
		ifFalse: ['active, click to turn off' ]]