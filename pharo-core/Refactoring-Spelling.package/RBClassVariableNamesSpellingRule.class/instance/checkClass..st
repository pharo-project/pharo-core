running
checkClass: aContext 
	aContext selectedClass isMeta
		ifTrue: [ ^ self ].
	aContext selectedClass classVarNames do: [ :name |
		(self checkIdentifier: name) do: [ :each | 
			result
				addSearchString: each;
				addClass: aContext selectedClass ] ]