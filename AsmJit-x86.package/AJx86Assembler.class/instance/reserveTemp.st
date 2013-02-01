stack management
reserveTemp
	^ self addInstruction: (AJReserveTemp new size: self wordSize).
