accessing
objectCount: aNumber

	objectCount := aNumber.
	objectsIndexes := FLLargeIdentityDictionary new.
	indexStream := FLIndexStream on: stream digits: aNumber digitLength.