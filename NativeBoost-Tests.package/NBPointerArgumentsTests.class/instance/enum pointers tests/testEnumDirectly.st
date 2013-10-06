testEnumDirectly 
	self should: [self readEnumPtrCase1: self class enumClass BBB] raise: NBCodeGenerationError 