invalidateCacheEntryFor: aMethod
	self removeAllFromMethodsIconsCache: aMethod.
	self updateList