tests - epoch
testSqueakEpoch

	self useTimeZone: 'EDT' during: [
		self assert: DateAndTime epoch equals: '1901-01-01T00:00:00+00:00' asDateAndTime.
		self assert: (DateAndTime fromSeconds: 0) equals: '1901-01-01T00:00:00+00:00' asDateAndTime ].