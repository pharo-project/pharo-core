entity: anObject
	super entity: anObject.
	
	self textBrick setTextWith: (self displayLogic cull: self entity).
	self textBrick classOrMetaClass: (self smalltalkClassLogic cull: self entity)
	