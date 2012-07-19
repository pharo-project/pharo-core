protocol
labelClickable: aBoolean

	aBoolean
		ifTrue: [ self 
					on: #click 
					send: #toggleSelected 
					to: self ]
		ifFalse:[ self
					on: #click 
					send: nil 
					to: nil ]