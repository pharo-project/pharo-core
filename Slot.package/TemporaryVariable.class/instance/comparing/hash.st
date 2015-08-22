hash

	^ (name hash
		bitXor: method hash)
		bitXor: startpc