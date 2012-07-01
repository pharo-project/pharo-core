accessing
registerExternalObject: anObject
	^ ProtectAdd critical: [self safelyRegisterExternalObject: anObject]
