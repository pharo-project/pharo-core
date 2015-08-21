finalizeFeedback: aBoolean withComment: aString

	text contents: 'Thanks!'.
	self
		removeMorph: positive;
		removeMorph: negative.
	
	[ aBoolean
		ifTrue:  [ critic providePositiveFeedback: aString ]
		ifFalse: [ critic provideNegativeFeedback: aString ]
	] fork.

	[ 2 seconds asDelay wait.
	  self delete ] fork.