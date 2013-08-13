tests - Dictionary keys values associations access
testKeys
	
	| collection result |
	collection := self nonEmpty.
	result := collection keys.
	
	result do: [ :key | self shouldnt: [collection at: key ]  raise:Error  ].
	self assert: result size  = collection size .
	
	self should: [result detect: [:each | (result occurrencesOf: each ) > 1] ] raise: Error. 