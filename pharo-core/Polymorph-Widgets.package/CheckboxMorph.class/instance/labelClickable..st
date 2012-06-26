protocol
labelClickable: aBoolean

	aBoolean
		ifTrue: [ labelMorph 
					on: #click 
					send: #toggleSelected 
					to: self ]
		ifFalse:[ labelMorph
					on: #click 
					send: nil 
					to: nil ]