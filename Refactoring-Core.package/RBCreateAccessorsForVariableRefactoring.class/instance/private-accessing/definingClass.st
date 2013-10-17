definingClass
	^ classVariable 
		ifTrue: [ class theMetaClass ]
		ifFalse: [ class ]