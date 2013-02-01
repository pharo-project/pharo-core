stack management
emitEpilogue: popExtraBytes

	^ stackManager emitEpilogue: popExtraBytes assembler: self