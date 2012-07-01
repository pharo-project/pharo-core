*Fuel
serializeOn: anEncoder

	anEncoder 
		encodeInt32: self julianDayNumber;
		encodeInt32: self nanoSecond;
		encodeInt32: self secondsSinceMidnight;
		encodeInt32: self offset asSeconds;
		encodeInt32: self offset nanoSeconds.