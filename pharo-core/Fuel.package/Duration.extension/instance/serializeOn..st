*Fuel
serializeOn: anEncoder
	anEncoder 
		encodeInt32: self asSeconds;
		encodeInt32: self nanoSeconds