startupList
	^ (categories flatCollect: #prioritizedList)
		asArray