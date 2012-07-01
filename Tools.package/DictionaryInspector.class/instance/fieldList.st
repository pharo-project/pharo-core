accessing
fieldList
	^ self baseFieldList
		, (keyArray collect: [:key | key printString])