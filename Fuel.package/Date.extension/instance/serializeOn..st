*Fuel
serializeOn: anEncoder
	anEncoder 
		encodeInt32: start julianDayNumberUTC;
		encodeInt24: start offset asSeconds;
		encodeInt32: start offset nanoSeconds.