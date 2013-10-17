testAsStringOnDelimiterMore

	| delim multiItemStream result allElementsAsString tmp |
	
	
	delim := ', '.
	result:=''.
	tmp:= self nonEmpty collect:[:each | each asString].
	multiItemStream := ReadWriteStream on:result.
	self nonEmpty  asStringOn: multiItemStream delimiter: ', '.
	
	allElementsAsString := (result findBetweenSubStrs: ', ' ).
	allElementsAsString do:
		[:each |
		self assert: (tmp occurrencesOf: each)=(allElementsAsString occurrencesOf: each).
		].