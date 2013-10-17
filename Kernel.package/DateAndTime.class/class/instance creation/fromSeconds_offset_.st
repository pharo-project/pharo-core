fromSeconds: utcSecondsSinceEpoch offset: aUTCOffset
	"Answer a DateAndTime since the Squeak epoch: 1 January 1901 for the given timeZone"

	| integerSeconds nanos  |
	integerSeconds := utcSecondsSinceEpoch truncated.
	integerSeconds = utcSecondsSinceEpoch
		ifTrue: [nanos := 0]
		ifFalse: [nanos := (utcSecondsSinceEpoch - integerSeconds * NanosInSecond) asInteger].
	^ self basicNew
		ticks: (Array
				with: SqueakEpoch
				with: integerSeconds
				with: nanos)
		offset: aUTCOffset asDuration