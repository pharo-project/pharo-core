checkClass: aContext
	(aContext selectedClass isMeta or: [ aContext selectedClass inheritsFrom: TestCase ])
		ifTrue: [ ^ self ].
	aContext selectedClass organization classComment isEmpty ifTrue: [ 
		result 
			addClass: aContext selectedClass; 
			addClass: aContext selectedClass class ]