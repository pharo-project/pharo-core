runClassTests: aCollection notifying: aBoolean

	(aCollection allSatisfy: [:each | each isTestCase ]) ifFalse: [ ^ self ].
	
	aCollection
		ifNotEmpty:[:classes | 
			classes do: [:class | self runTestsOfClass: class notifying: aBoolean ]]