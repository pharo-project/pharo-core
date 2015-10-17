hash
	^ (self class hash 
		bitXor: self owner hash) 
			bitXor: self selector hash