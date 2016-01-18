testRegisterSystemElement
	self register: 'anObject' atSystemPriority: 1.

	self 
		assert: manager startupList
		equals: #( 'anObject' ).