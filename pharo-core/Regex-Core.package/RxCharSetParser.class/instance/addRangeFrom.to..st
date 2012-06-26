parsing
addRangeFrom: firstChar to: lastChar

	firstChar asInteger > lastChar asInteger ifTrue:
		[RxParser signalSyntaxException: ' bad character range'].
	elements add: (RxsRange from: firstChar to: lastChar)