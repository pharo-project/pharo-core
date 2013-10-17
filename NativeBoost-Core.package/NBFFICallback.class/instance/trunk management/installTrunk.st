installTrunk
	| code bytes |
	code := self class trunkCode.
	bytes := code bytes.
	
	trunk := NativeBoost allocate: bytes size.
	NativeBoost memCopy: bytes to: trunk size: bytes size.
	
	trunk nbUInt32AtOffset: (code offsetAt: #index) put: index
