testEnumCase4ByteArray 
	|item|
	item := self class enumClass BBB.
	self 
		should:  [ self readEnumPtrCase4: (self enumByteArray: item) ]
		raise: NBCodeGenerationError