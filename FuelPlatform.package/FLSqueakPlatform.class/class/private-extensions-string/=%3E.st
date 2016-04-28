=> anObject
	<flExtensionOf: #String>	
	^ anObject isBehavior
		ifTrue: [ClassBinding key: self value: anObject]
		ifFalse: [Global key: self value: anObject]