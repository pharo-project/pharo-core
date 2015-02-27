click: evt
	
	action ifNil: [ ^ false ].
	action isBlock
		ifTrue: [ action cull: self cull: evt ]
		ifFalse: [ action performOn: self data ].
	
	^ true