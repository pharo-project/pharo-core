accessing
stamp: aString

	self hasComment
	ifTrue: [ self comment stamp: aString ]
	ifFalse:[ self factory createComment 
						 parent: self; 
						 stamp: aString ]