testing
isEnumerable

	elements detect: [:some | some isEnumerable not] ifNone: [^true].
	^false