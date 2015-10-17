checkForMissingClasses
	self notifying ifFalse: [ ^ self ].

	[ self examples ]
		on: GTExampleDeclaredClassMissing
		do: [ :exception | 
			self notifyForMissingClasses: exception ]