ensureExctractedData
	self defaultEventsDirectory exists ifFalse: [ self extract ]