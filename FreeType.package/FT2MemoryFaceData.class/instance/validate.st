validation
validate
	self isValid 
		ifFalse: [
			bytes ifNotNil:[
				[self primMalloc: bytes]
					on: FT2Error 
					do:[:e |"need to do something here?"].
				self isValid ifTrue:[self class register: self]]]