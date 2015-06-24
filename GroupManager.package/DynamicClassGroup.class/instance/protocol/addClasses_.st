addClasses: aCollection 
	self isReadOnly ifFalse:[ self addBlock: [ aCollection ] ]