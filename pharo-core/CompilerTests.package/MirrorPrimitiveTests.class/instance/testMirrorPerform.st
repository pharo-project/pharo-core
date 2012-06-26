tests
testMirrorPerform

	<expectedFailure>

	| stackpBefore stackpAfter anInterval |
	stackpBefore := thisContext stackPtr.
	anInterval := 1 to: 2.
	self assert: (thisContext object: anInterval perform:# species withArguments: #() inClass: Interval) == Array.
	self assert: (thisContext object: anInterval perform:# species withArguments: #() inClass: Interval superclass) == Interval.
	self should: [thisContext object: anInterval perform:# species withArguments: #() inClass: Point]
		raise: Error.
	self should: [thisContext object: anInterval perform:# species withArguments: OrderedCollection new inClass: Interval]
		raise: Error.
	stackpAfter := thisContext stackPtr.
	self assert: stackpBefore = stackpAfter "Make sure primitives pop all their arguments"