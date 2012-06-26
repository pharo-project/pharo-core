tests - Dictionary keys values associations access
testKeysSortedSafely
	| collection result |
	collection := self nonEmpty.
	result := collection keysSortedSafely .
	
	result do: [ :key | self shouldnt: [collection at: key ]  raise:Error  ].
	self assert: result size  = collection size .
	
	self should: [result detect: [:each | (result occurrencesOf: each ) > 1] ] raise: Error. 
	self assert: result asArray isSorted.