charsetAt: encoding

	^ EncodedCharSets at: encoding + 1 ifAbsent: [EncodedCharSets at: 1].
