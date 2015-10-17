hash
	^ (((self class hash 
		bitXor: self pragma hash) 
			bitXor: self method hash)
				bitXor: self method selector hash)
					bitXor: self method methodClass hash