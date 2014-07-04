assertSelector: aSelector collects: aCollection from: aDictionary
	self
		assert: (self emptyDictionary perform: aSelector) = #();
		assert: (aDictionary perform: aSelector) = aCollection asArray