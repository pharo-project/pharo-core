code generation
emitScale: shift index: indexCode base: baseCode

	self emitByte: shift << 3 + indexCode << 3 + baseCode