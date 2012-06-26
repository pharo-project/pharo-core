tests
during: aBlock rename: aClass as: anotherClass

	[ Smalltalk at: anotherClass name put: aClass.
	^aBlock ] ensure: [ 
	Smalltalk at: anotherClass name put: anotherClass ].
	