protocol
labelClickable: aBoolean

	aBoolean
		ifTrue: [ self 
					on: #mouseDown 
					send: #toggleSelected 
					to: self ]
		ifFalse:[ self
					on: #mouseDown 
					send: nil 
					to: nil ]