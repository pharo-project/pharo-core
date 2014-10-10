checkClass: aClass
	(aClass isMeta or: [ aClass inheritsFrom: TestCase ])
		ifTrue: [ ^ self ].
	aClass organization classComment isEmpty ifTrue: [ 
		result 
			addClass: aClass; 
			addClass: aClass class ]