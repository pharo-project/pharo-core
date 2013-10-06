buildClassesSearch
	
	^ SearchMorph new
		model: self;
		updateSelector: #classSearchUpdate:;
		yourself