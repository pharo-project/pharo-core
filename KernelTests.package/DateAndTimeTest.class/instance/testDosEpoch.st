tests - epoch
testDosEpoch

	self useNonUtcTimeZoneDuring: [ | localEpoch |
		localEpoch := '1 January 1980 00:00' asDateAndTime.
		self assert: DateAndTime dosEpoch equals: localEpoch ].