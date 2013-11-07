assertReading: aString as: aPattern equals: aDate

	self
		assert: (self dateClass readFrom: aString readStream pattern: aPattern)
		equals: aDate
	