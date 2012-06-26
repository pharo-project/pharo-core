initialize - event
methodChanged: anEvent
	"Remove the changed method from the known test results."
	
	| cls sel |
	anEvent item isCompiledMethod ifFalse: [ ^ self ].
	cls := anEvent item methodClass.
	(cls inheritsFrom: TestCase)
		ifFalse: [^ self].
	sel := anEvent item selector.
	(sel beginsWith: 'test')
		ifFalse: [^ self].
	self classForTestResult removeFromTestHistory: sel in: cls.
