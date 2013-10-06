whileFalse: aBlock
	self value 
		ifFalse: [
			aBlock value. 
			self whileFalse: aBlock ]