tests
testTimestamp

	self assertSerializationEqualityOf: (TimeStamp date: (Date fromSeconds: 3330720000) time: (Time fromSeconds: 13506) ).
	self assertSerializationEqualityOf: (Date today asTimeStamp).
	

