encoding
encodeVariable: name ifUnknown: action
	^self encodeVariable: name sourceRange: nil ifUnknown: action