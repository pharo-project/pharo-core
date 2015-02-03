entity: anObject
	super entity: anObject.
	
	self transformedEntity: (self displayLogic phlowValue: anObject).
	self listBrick adaptor on: self transformedEntity