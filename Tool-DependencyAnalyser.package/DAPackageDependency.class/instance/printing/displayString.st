displayString
	^ String streamContents: [ :stream | self printReasonOn: stream ]