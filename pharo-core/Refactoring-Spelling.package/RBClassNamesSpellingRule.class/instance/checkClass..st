running
checkClass: aContext
	| name |
	aContext selectedClass isMeta 
		ifTrue: [ ^ self ].
	name := aContext selectedClass name.
	(self checkIdentifier: name) do: [ :each | 
		result
			addSearchString: each;
			addClass: aContext selectedClass;
			addClass: aContext selectedClass class ]