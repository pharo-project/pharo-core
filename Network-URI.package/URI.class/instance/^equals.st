testing
= otherURI
	^ self class = otherURI class
		and: [self asString = otherURI asString]