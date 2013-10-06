testEnumCase1ExternalAddress 
	| item | 
	item := self class enumClass DDD.
	self should: [self readEnumPtrCase1: (self enumExternalAddress: item)] raise: NBCodeGenerationError.