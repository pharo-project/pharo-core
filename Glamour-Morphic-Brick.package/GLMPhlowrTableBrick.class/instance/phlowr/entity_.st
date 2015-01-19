entity: anObject
	super entity: anObject.
	
	self transformedEntity: (self displayLogic cull: anObject).
	self listBrick adaptor on: self transformedEntity