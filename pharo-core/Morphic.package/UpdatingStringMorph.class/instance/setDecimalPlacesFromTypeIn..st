target access
setDecimalPlacesFromTypeIn: typeIn
	"The user has typed in a number as the new value of the receiver.  Glean off decimal-places-preference from the type-in"

	| decimalPointPosition tail places |
	(typeIn includes: $e) ifTrue: [^ self].
	decimalPointPosition := typeIn indexOf: $. ifAbsent: [nil].
	places := 0.
	decimalPointPosition
		ifNotNil:
			[tail := typeIn copyFrom: decimalPointPosition + 1 to: typeIn size.
			[places < tail size and: [(tail at: (places + 1)) isDigit]]
				whileTrue:
					[places := places + 1]].
		
	self decimalPlaces: places