tests - comma and delimiter
testAsStringOnDelimiterLastMore

	| delim multiItemStream result last allElementsAsString |
	
	delim := ', '.
	last := 'and'.
	result:=''.
	multiItemStream := ReadWriteStream on:result.
	self nonEmpty  asStringOn: multiItemStream delimiter: ', ' last: last.
	
	allElementsAsString:=(result findBetweenSubStrs: ', ' ).
	1 to: allElementsAsString size do:
		[:i | 
		i<(allElementsAsString size-1 )
			ifTrue: [self assert: (allElementsAsString at:i)=((self nonEmpty at:i)asString)].
		i=(allElementsAsString size-1)
			ifTrue:[ self deny: (allElementsAsString at:i)=(last)asString].
		i=(allElementsAsString size)
			ifTrue: [self assert: (allElementsAsString at:i)=((self nonEmpty at:(i-1))asString)].
			].
	
