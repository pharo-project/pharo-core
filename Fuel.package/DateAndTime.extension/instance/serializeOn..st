*Fuel
serializeOn: anEncoder

	anEncoder 
		encodeUint32: self julianDayNumberUTC;
		encodeUint32: self nanoSecond;
		encodeInt24: self secondsSinceMidnight;
		encodeInt24: self offset asSeconds;
		encodeInt32: self offset nanoSeconds.