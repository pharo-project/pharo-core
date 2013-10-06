testPointerCannotExtendByte

	self shouldnt: [ :builder | 
			builder layoutClass: ByteLayout ]
		extendWith: [ :builder | 
			builder layoutClass: PointerLayout ]