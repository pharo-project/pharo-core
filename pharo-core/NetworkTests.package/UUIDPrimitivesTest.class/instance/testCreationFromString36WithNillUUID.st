tests
testCreationFromString36WithNillUUID
	
	self shouldnt: [UUID fromString36: (UUID nilUUID asString36)] 
    		raise: Error.