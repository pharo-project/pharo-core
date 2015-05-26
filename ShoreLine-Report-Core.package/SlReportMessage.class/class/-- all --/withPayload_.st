withPayload: payload

	^ self basicNew initialize
		date: DateAndTime now;
		payload: payload;
		yourself