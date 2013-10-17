addDependent: anObject

	self announcer weak
		on: MorphChanged , MorphChangedWithArguments
		send: #handleUpdate:
		to: anObject.
			
	^ anObject