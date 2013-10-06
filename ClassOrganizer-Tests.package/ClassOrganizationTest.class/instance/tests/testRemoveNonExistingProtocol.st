testRemoveNonExistingProtocol
	self 
		shouldnt: [ self organization removeCategory: 'non-existent' ] 
		raise: Error.
