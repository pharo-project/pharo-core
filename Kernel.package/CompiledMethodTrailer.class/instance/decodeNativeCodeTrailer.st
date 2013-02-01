decoding
decodeNativeCodeTrailer
	| bytes platformId msz pos shift srcPtr |
	
	msz := method size.
	platformId := (method at: msz - 1) + ((method at: msz - 2)<<8).
	size := 	(method at: msz - 3) + ((method at: msz - 4)<<8).
		
	pos := method size-5.
	shift := srcPtr := 0.
	
	[ | value | 
		value := method at: pos.
		srcPtr := (value bitAnd: 16r7F) << shift + srcPtr.
		pos := pos - 1.
		shift := shift + 7.
		value > 127 ] whileTrue.

	bytes := ByteArray new: size - (msz - pos).
	
	1 to: bytes size do: [:i | bytes at: i put: (method at: msz-size+i) ].
	
	data := Array with: platformId with: bytes with: srcPtr.
	