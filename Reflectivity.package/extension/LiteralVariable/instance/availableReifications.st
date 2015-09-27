availableReifications
	^RFReification subclasses 
		select: [ :e | e nodes includesAny: self class withAllSuperclasses ]
		thenCollect: #key