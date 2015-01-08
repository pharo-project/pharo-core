click: evt
	
	action ifNil: [ ^ false ].
	action isBlock
		ifTrue: [ action value ]
		ifFalse: [ action performOn: self data ].
	
	^ true