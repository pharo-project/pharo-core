writeQueryFields: dictionary withTextEncoding: encoding on: stream
	| first |
	first := true.
	dictionary keysAndValuesDo: [ :key :value | 
		first ifFalse: [ stream nextPut: $& ].
		first := false.
		stream nextPutAll: (self encodePercent: key safeSet: #querySafeSet encoding: encoding).
		value ifNotNil: [ 
			stream
				nextPut: $=;
				nextPutAll: (self encodePercent: value safeSet: #querySafeSet encoding: encoding) ] ]