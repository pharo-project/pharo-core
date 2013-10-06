registerExternalObject: anObject
	^ ProtectAdd critical: [self safelyRegisterExternalObject: anObject]
