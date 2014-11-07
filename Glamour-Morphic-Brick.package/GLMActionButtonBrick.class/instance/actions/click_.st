click: evt

	action isBlock
		ifTrue: [ action value ]
		ifFalse: [ action performOn: self data ].
	
	^ true