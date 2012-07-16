instance creation
fromSeconds: seconds 
	"Answer a DateAndTime since the Squeak epoch: 1 January 1901"

	| integerSeconds nanos offset |
	integerSeconds := seconds truncated.
	offset := self localOffset.
	integerSeconds = seconds
		ifTrue: [nanos := 0]
		ifFalse: [nanos := (seconds - integerSeconds * NanosInSecond) asInteger].
	^ self basicNew
		ticks: (Array
				with: SqueakEpoch
				with: integerSeconds
				with: nanos)
		offset: Duration new