testRegisterElementByDefault
	manager register: 'anObject'.

	self 
		assert: manager startupList
		equals: #( 'anObject' ).