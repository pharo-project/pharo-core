checkForMissingClasses: aCompiledMethod
	self notifying ifFalse: [ ^ self ].

	[ aCompiledMethod gtExamples ]
		on: GTExampleDeclaredClassMissing
		do: [ :exception | 
			self notifyForMissingClasses: exception ]