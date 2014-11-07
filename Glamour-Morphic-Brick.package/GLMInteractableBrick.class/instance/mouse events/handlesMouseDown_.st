handlesMouseDown: evt
	
	^ self isEnabled
		ifTrue: [ true ]
		ifFalse: [ super handlesMouseDown: evt ]
	