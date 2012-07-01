private
runClassTests: aCollection notifying: aBoolean

	(aCollection allSatisfy: [:each | each inheritsFrom: TestCase ]) ifFalse: [ ^ self ].
	
	aCollection
		ifNotEmpty:[:classes | 
			classes do: [:class | self runTestsOfClass: class notifying: aBoolean ]]