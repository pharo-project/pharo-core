testReshapeCompactClass

	aClass := self make: [ :builder |
		builder name: self aClassName ].
	
	self assert: aClass indexIfCompact equals: 0.

	[ 
	aClass becomeCompact.

	self assert: aClass indexIfCompact > 0.
	
	DangerousClassNotifier disableForTesting.	
	aClass := self make: [ :builder |
		builder name: self aClassName;
		slots:#(x) ].
	DangerousClassNotifier restoreAfterTesting.	

	self assert: aClass indexIfCompact > 0 
	
	] ensure: [ aClass becomeUncompact ].

	self assert: aClass indexIfCompact equals: 0.
