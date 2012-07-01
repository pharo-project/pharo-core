tests
testMirrorClass
	
	<expectedFailure>

	| stackpBefore stackpAfter |
	stackpBefore := thisContext stackPtr.
	self assert: (thisContext objectClass: Array new) = Array.
	self assert: (thisContext objectClass: 1) = 1 class.
	self assert: (thisContext objectClass: ProtoObject new) = ProtoObject.
	stackpAfter := thisContext stackPtr.
	self assert: stackpBefore = stackpAfter "Make sure primitives pop all their arguments"