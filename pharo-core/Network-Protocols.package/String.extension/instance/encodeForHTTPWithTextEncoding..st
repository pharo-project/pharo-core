*network-protocols
encodeForHTTPWithTextEncoding: encodingName

	^ self encodeForHTTPWithTextEncoding: encodingName conditionBlock: [:c | c isSafeForHTTP].
