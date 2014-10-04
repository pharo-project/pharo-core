addDependent: anObject

	self announcer weak
		when: MorphChanged , MorphChangedWithArguments
		send: #handleUpdate:
		to: anObject.
			
	^ anObject