accessing
unregisterExternalObject: anObject
	ProtectRemove critical: [self safelyUnregisterExternalObject: anObject]
